#!/usr/bin/env bash

trap exit 1 SIGINT

mappings_directory="mappings"
output_directory="knowledge-graph"
rml_directory="rml"

mkdir -p ${output_directory}
mkdir -p ${rml_directory}

downloadYARRRML() {
    local yarrrml_dir="yarrrml-parser"
    if [ ! -d $yarrrml_dir ]; then
        git clone https://github.com/RMLio/yarrrml-parser.git $yarrrml_dir
        cd $yarrrml_dir
        npm i
        cd -
    fi
}

parseYARRRML() {
    local yarrrml_file_path=$1
    local yarrrml_file_name=$2
    local output_file_extension=$3

    ./yarrrml-parser/bin/parser.js -i $yarrrml_file_path -o "${rml_directory}/${yarrrml_file_name}_rml.$output_file_extension"
}

mapRML() {
    local file_path=$1
    local output_file=$2

    if [ $(stat -c %s $output_file 2>/dev/null || echo -e 0) -gt 0 ]; then
        echo "$file_path has already been mapped"
    else
        echo "Mapping '$file_path' and storing output in '$output_file'"
        time java -Xmx4096m -cp rmlmapper-4.9.1.jar:mssql-jdbc-8.2.0.jre11.jar be.ugent.rml.cli.Main -s turtle -m $file_path > $output_file
    fi
}

downloadYARRRML

# Parse YARRRML files to RML
for f in ${mappings_directory}/*.yml; do
    file=${f##*/}
    echo "Generating RML mappings from '${f##*/}'"
    parseYARRRML "$f" "${file%.*}" "ttl"
done

# Execute RML mappings
for f in ${rml_directory}/*.ttl; do
    file=${f##*/}
    mapRML "${f}" "${output_directory}/${file%_rml*}.ttl"
done
