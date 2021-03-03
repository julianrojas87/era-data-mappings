# CHANGELOG

All notable changes to this project will be documented in this file.

## [v1.2.1](https://github.com/julianrojas87/era-data-mappings/compare/v1.2.0...v1.2.1) (2021-03-03)

### Raw Data: [ERA-KG-v1.2.1](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v1.2.1.ttl.gz)

### Features and Bug Fixes

* Use proper WGS84 predicates for lat and long. Fixes [#25](https://github.com/julianrojas87/era-data-mappings/issues/25).
* Update YARRRML parser and RML Mapper to their latest versions
* Add `rdfs:label` to abstraction entities. Fixes [#24](https://github.com/julianrojas87/era-data-mappings/issues/24).
* Adjust mapping execution script to merge and compress the resulting KG
* Track the KG raw files using git-lfs

## [v1.2.0](https://github.com/julianrojas87/era-data-mappings/compare/v1.1.1...v1.2.0) (2021-01-29)

### Raw Data: [ERA-KG-v1.2.0](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v1.2.0.ttl.gz)

### Features and Bug Fixes

* Add mappings for `era:NationalLineId` and `era:LineReference` including kilometer points information (closes [#19](https://github.com/julianrojas87/era-data-mappings/issues/19))
* Refactor URI strategies for instances of `era:MicroLink`, `era:Track`, `era:NodePort`, `era:InternalNodeLink` and `era:Tunnel` to more stable and independent from RINF's tables IDs
* Create `era:InternalNodeLink` based on every related track (both arriving and departing) instead of for every related Section Of Line
* Adjust mappings to create real `era:InternalNodeLink` instances based on a given [connectivity table data source](https://github.com/julianrojas87/era-data-mappings/blob/master/data/op_internal_connectivity.csv)

## [v1.1.1](https://github.com/julianrojas87/era-data-mappings/compare/v1.1.0...v1.1.1) (2020-11-24)

### Raw Data: [ERA-KG-v1.1.1](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v1.1.1.ttl.gz)

### Features and Bug Fixes

* Added `era:vehicleNumber` predicate

## [v1.1.0](https://github.com/julianrojas87/era-data-mappings/compare/v1.0.0...v1.1.0) (2020-11-24)

### Raw Data: [ERA-KG-v1.1.0](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v1.1.0.ttl.gz)

### Features and Bug Fixes

* Mapping for noise parameter from RINF `# 1.1.1.1.7.11`
* Adjusted Manufacturers as master data
* Added `rdfs:label` to tracks
* Added country information to tunnels and tracks
* Mappings for ECCVR data source
* Mappings for RSDR data source

# [v1.0.0](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.3...v1.0.0) (2020-10-21)

### Raw Data: [ERA-KG-v1.0.0](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v1.0.0.ttl.gz)

### Features and Bug Fixes

* Merge predicates with "other" alternative

## [v0.9.3](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.2...v0.9.3) (2020-09-30)

### Raw Data: [ERA-KG-v0.9.3](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v0.9.3.ttl.gz)

### Features and Bug Fixes

* Fix for [#12](https://github.com/julianrojas87/era-data-mappings/issues/12)

## [v0.9.2](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.1...v0.9.2) (2020-09-30)

### Raw Data: [ERA-KG-v0.9.2](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v0.9.2.ttl.gz)

### Features and Bug Fixes

* Update old external data source for EU country definitions
* Create internal node links among outgoing micro links. Fixes [#5](https://github.com/julianrojas87/era-data-mappings/issues/5)
* Added mappings for missing ERATV gauging profiles. Fixes [#4](https://github.com/julianrojas87/era-data-mappings/issues/4)
* Fix bug on gauging profile mappings
* Fix bug on rail inclination mappings
* Add mappings for country authorizations for Vehicles. Fixes [#6](https://github.com/julianrojas87/era-data-mappings/issues/6)
* Change mappings of UIC codes to national line ids
* Fix contact strip materials mappings from ERATV

## [v0.9.1](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.0...v0.9.1) (2020-09-09)

### Raw Data: [ERA-KG-v0.9.1](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v0.9.1.ttl.gz)

### Features and Bug Fixes

* Fix rolling stocks fire prefix for tunnels
* Fix `era:otherPantographHead` predicate typo
* Add mappings for Internal Node Links inside border Micro Nodes

## [v0.9.0](https://github.com/julianrojas87/era-data-mappings/compare/v0.3.9...v0.9.0) (2020-09-09)

### Raw Data: [ERA-KG-v0.9.0](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v0.9.0.ttl.gz)

### Features and Bug Fixes

* Add mappings for energy supply systems taxonomy and map as a named entity
* Add mappings for UIC codes taxonomy and map as a named entity
* Add mappings for contact strip materials taxonomy (accepted and others) and map as a named entity
* Map fire safety categories as named entities for vehicles
* Add mappings for platform heights taxonomy and map as a named entity
* Add mappings for ETCS system compatibilities taxonomy and map as a named entity
* Map train integrities for vehicles
* Add mappings for axle positions taxonomy and map as a named entity
* Add mappings for GSM-R networks taxonomy and map as a named entity
* Add mappings for Class B taxonomy and map as a named entity
* Remove unnecessary prefixes for "other" taxonomies
* Add mappings for max speed cant deficiencies taxonomy and map as a named entity
* Add mappings for gauge changeover facilites taxonomy and map as a named entity
* Add mappings for emergency brakes taxonomy and map as a named entity
* Add mappings for bake wight percentages taxonomy and map as a named entity
* Map other axle bearing monitoring
* Add mappings for ice conditions taxonomy and map as a named entity
* Shift to EU country vocabulary for mapping countries
* Exclude operational point type related triples from KG as they belong in the ERA-skos vocabulary
* Fix rolling stocks prefix for tunnels

## v0.3.9

### Raw Data: [ERA-KG-v0.3.9](https://github.com/julianrojas87/era-data-mappings/raw/master/knowledge-graph/era-kg-v0.3.9.ttl.gz)

### Features and Bug Fixes

* Separate micro node and operational point mappings
* Use geonames to link country entities
* Add additional data source linking country codes to geonames URIs
* Add mappings for load capabilities taxonomy
* Add mappings for axle monitoring taxonomy
* Add mappings for thermal capacity taxonomy
* Add mappings for ice conditions taxonomy
* Add mappings for contact line systems taxonomy
* Add mappings for TSI pantograph heads taxonomy
* Add mappings for other pantograph heads taxonomy
* Add mappings for contact strip materials taxonomy
