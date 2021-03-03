# era-data-mappings

[RML](https://rml.io) mappings to generate the ERA Knowledge Graph. The mappings are defined using the [YARRRML](https://rml.io/yarrrml/) syntax. See the latest changes in [CHANGELOG.md](https://github.com/julianrojas87/era-data-mappings/blob/master/CHANGELOG.md).

## Requirements

- Node.js
- Java JRE

## Execute mappings

The mappings can be executed using the `map-turtle.sh {x.x.x}` script where `x.x.x` should be replaced by the version number that wants to be generated. This script will run the mapping process for all the YARRRML files present in the `mappings/` folder. The resulting Linked Data files will be stored in the `knowledge-graph/` folder and will be merged and compressed into a single file.

```bash
./map-turtle.sh 1.2.2
```

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
5. Submit a **Pull request** to the [**dev**](https://github.com/julianrojas87/era-data-mappings/tree/dev) branch so we can review your changes.

NOTE: Make sure to merge the latest "upstream" version before submitting a pull request.
