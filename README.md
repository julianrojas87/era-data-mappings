# era-data-mappings

[RML](https://rml.io) mappings to generate the ERA Knowledge Graph. The mappings are defined using the [YARRRML](https://rml.io/yarrrml/) syntax. See the latest changes in [CHANGELOG.md](https://github.com/julianrojas87/era-data-mappings/blob/master/CHANGELOG.md).

## Execute mappings

The mappings can be run in two different ways:

### Run WITH Docker

This application have been dockerized to facilitate its execution. Follow the next steps:

1. Make sure to have a recent version of [Docker](https://docs.docker.com/engine/install/) installed.

2. Set the environment variables in the [`conf.env`](https://github.com/julianrojas87/era-data-mappings/blob/master/conf.env) file.

3. Build the docker image:

   ```bash
   docker build -t era-data-mappings ./
   ```

4. Run the mapping process:

   ```bash
   docker run --volume=/path/to/output/folder:/opt/era-data-mappings/knowledge-graph --env-file=conf.env era-data-mappings
   ```

   Replace `/path/to/output/folder` in the `--volume` parameter for the path of the folder where you expect to store the resulting Knowledge Graph.

### Run WITHOUT Docker

To directly execute these mappings you need to install first:

- [Node.js](https://nodejs.org/en/download/)  at least v12.
- [Java JRE](https://openjdk.java.net/projects/jdk/11/) at least v11.

Then follow the next steps:

1. Replace the DB connection parameters for RINF and ERATV in each of the [YARRRML](https://github.com/julianrojas87/era-data-mappings/tree/master/mappings) mapping files that needs them. For example in [`operational-points.yml`](https://github.com/julianrojas87/era-data-mappings/blob/master/mappings/operational-points.yml)  only the connection parameters for RINF are needed:

   ```yaml
   connection: 
       access: &host ${RINF_HOST} # e.g. //127.0.0.1:1434
         username: ${RINF_USER} # e.g. SA
         password: ${RINF_PWD} # e.g. your_password
   ```

2. Once all the mapping files have been properly configured, you can start the mapping process with the following command:

   ```bash
   ./map-turtle.sh x.x.x
   ```

   Replace `x.x.x` for the version number of your Knowledge Graph

3. The resulting Linked Data files will be stored in the local `knowledge-graph/` folder and will be merged and compressed into a single file, but individual [`Turtle`](https://www.w3.org/TR/turtle/) files per mapping file will also be available.

## See also

1. [ERA vocabulary](https://github.com/julianrojas87/era-vocabulary) which provides the formal definitions for the concepts, entities and properties used in the Knowledge Graph. The vocabulary is defined as an RDF ontology following the W3C standards and recommendations.
2. [ERA Reference Data](http://era.ilabt.imec.be/era-vocabulary/era-skos#) that includes [SKOS](http://www.w3.org/2004/02/skos/core)-based taxonomies related to the railway domain.
3. [SPARQL query interface](https://linked.ec-dataplatform.eu/sparql) for the ERA Knowledge Graph. ERA's triples are contained within the named graph `https://linked.ec-dataplatform.eu/era`.

## Issues

We welcome issues and enhancement requests that follow these guidelines:

1. Issues opened in this repository should concern the [ERA Knowledge Graph data](https://test-linked.ec-dataplatform.eu/sparql). For issues related to the ERA vocabulary, please refer to the [vocabulary repository](https://github.com/julianrojas87/era-vocabulary/issues).
2. Please label your issues using the corresponding version tag. For example, using the label `v0.9.0`. 

## Contributing

For contributions we follow the "fork-and-pull" Git workflow:

1. **Fork** this repository on GitHub.
2. **Clone** the project in your local machine.
3. **Commit** the changes to your own branch.
4. **Push** your changes back up to your own fork.
5. Submit a **Pull request** to the [**dev**](https://github.com/julianrojas87/era-vocabulary/tree/dev) branch so we can review your changes.

NOTE: Make sure to merge the latest "upstream" version before submitting a pull request.