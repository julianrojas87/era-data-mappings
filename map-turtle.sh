#!/usr/bin/env bash

trap exit 1 SIGINT

mappings_directory="mappings"
output_directory="knowledge-graph"
rml_directory="rml"
knowledge_graph="era-kg-v"

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

downloadTTLMerge() {
    local ttlmerge_dir="ttl-merge"
    if [ ! -d $ttlmerge_dir ]; then
        git clone https://github.com/julianrojas87/ttl-merge.git $ttlmerge_dir
        cd $ttlmerge_dir
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
        time java -Xmx4096m -cp rmlmapper-4.9.1.jar:mssql-jdbc-8.2.0.jre11.jar be.ugent.rml.cli.Main -s turtle -m $file_path >$output_file
    fi
}

# Download the YARRML parser
downloadYARRRML
# Download the turtle file merge tool
downloadTTLMerge

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

# Merge resulting RDF (turtle) files into one
if [ ! -d ${output_directory}/${knowledge_graph}$1.ttl.gz ]; then
    echo "Merging mapped ERA RDF files into a single file for version $1"
    ./ttl-merge/index.js -i ${output_directory} \
        -e external/${output_directory}/skos-concepts.ttl \
        -p prefixes.json >${output_directory}/${knowledge_graph}$1.ttl
    echo "Compressing resulting RDF file"
    gzip ${output_directory}/${knowledge_graph}$1.ttl
fi
echo "The ERA Knowledge Graph v$1 has created successfully!"
