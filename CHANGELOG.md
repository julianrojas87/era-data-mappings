# CHANGELOG

All notable changes to this project will be documented in this file.

## [v2.0.0-alpha](https://github.com/julianrojas87/era-data-mappings/compare/v1.2.1...v2.0.0-alpha) (2021-04-12)

### Raw Data: [ERA-KG-v2.0.0-alpha](https://drive.google.com/file/d/1yCDOHc7AERsPNCgrqnPfPMEyrT6Z_U__/view?usp=sharing)

### Features and Bug Fixes

* Full mapping refactoring to adopt a topological model in accordance with the [RailTopoModel](http://www.railtopomodel.org/en/download/irs30100-apr16-7594BCA1524E14224D0.html?file=files/download/RailTopoModel/180416_uic_irs30100.pdf)
* Parallel mapping process based on GNU parallel
* Mappings for micro and meso elements from RailML sources
* Mappings for RailML signals
* Mappings for micro and meso elements from RINF source
* Aggregation of micro and meso elements
* Mappings for `era:SectionOfLine` entities
* Mappings to link RINF OPs to RailML meso NetElements
* Mappings to link RINF SoLs to RailML meso NetElements
* Adjust internal connectivity table for creating proper URIs

## [v1.2.1](https://github.com/julianrojas87/era-data-mappings/compare/v1.2.0...v1.2.1) (2021-03-03)

### Raw Data: [ERA-KG-v1.2.1](https://drive.google.com/file/d/1KofPzYx2ovgAz85rLuO5J98SEs2BjWbO/view?usp=sharing)

### Features and Bug Fixes

* KG built from latest RINF (05-02-2021) and ERATV (17-02-2021) versions
* Use proper WGS84 predicates for lat and long. Fixes [#25](https://github.com/julianrojas87/era-data-mappings/issues/25).
* Update YARRRML parser and RML Mapper to their latest versions
* Add `rdfs:label` to abstraction entities. Fixes [#24](https://github.com/julianrojas87/era-data-mappings/issues/24).
* Adjust mapping execution script to merge and compress the resulting KG
* Dockerized application

## [v1.2.0](https://github.com/julianrojas87/era-data-mappings/compare/v1.1.1...v1.2.0) (2021-01-29)

### Raw Data: [ERA-KG-v1.2.0](https://drive.google.com/file/d/1Il85r_CnuoGMjcKLBF6f08ThllAslyLH/view?usp=sharing)

### Features and Bug Fixes

* Add mappings for `era:NationalLineId` and `era:LineReference` including kilometer points information (closes [#19](https://github.com/julianrojas87/era-data-mappings/issues/19))
* Refactor URI strategies for instances of `era:MicroLink`, `era:Track`, `era:NodePort`, `era:InternalNodeLink` and `era:Tunnel` to more stable and independent from RINF's tables IDs
* Create `era:InternalNodeLink` based on every related track (both arriving and departing) instead of for every related Section Of Line
* Adjust mappings to create real `era:InternalNodeLink` instances based on a given [connectivity table data source](https://github.com/julianrojas87/era-data-mappings/blob/master/data/op_internal_connectivity.csv)

## [v1.1.1](https://github.com/julianrojas87/era-data-mappings/compare/v1.1.0...v1.1.1) (2020-11-24)

### Raw Data: [ERA-KG-v1.1.1](https://drive.google.com/file/d/1hW1H3zMd33Jr0U8RwCBXv94XKE9Lh0KO/view?usp=sharing)

### Features and Bug Fixes

* Added `era:vehicleNumber` predicate

## [v1.1.0](https://github.com/julianrojas87/era-data-mappings/compare/v1.0.0...v1.1.0) (2020-11-24)

### Raw Data: [ERA-KG-v1.1.0](https://drive.google.com/file/d/17WTVloUx5dNbibweP-cvL0U8b9TH4JO9/view?usp=sharing)

### Features and Bug Fixes

* Mapping for noise parameter from RINF `# 1.1.1.1.7.11`
* Adjusted Manufacturers as master data
* Added `rdfs:label` to tracks
* Added country information to tunnels and tracks
* Mappings for ECCVR data source
* Mappings for RSDR data source

# [v1.0.0](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.3...v1.0.0) (2020-10-21)

### Raw Data: [ERA-KG-v1.0.0](https://drive.google.com/file/d/1tHX6m-_W1xFfQrjJS31t-JQfc3tbtsRI/view?usp=sharing)

### Features and Bug Fixes

* Merge predicates with "other" alternative

## [v0.9.3](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.2...v0.9.3) (2020-09-30)

### Raw Data: [ERA-KG-v0.9.3](https://drive.google.com/file/d/1XCqPDeKoBpbaMlaAha-dN1tLIU3h7yAR/view?usp=sharing)

### Features and Bug Fixes

* Fix for [#12](https://github.com/julianrojas87/era-data-mappings/issues/12)

## [v0.9.2](https://github.com/julianrojas87/era-data-mappings/compare/v0.9.1...v0.9.2) (2020-09-30)

### Raw Data: [ERA-KG-v0.9.2](https://drive.google.com/file/d/1i1ji2SyAPR4jX8diU5PKfjqO5EbQ0ioA/view?usp=sharing)

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

### Raw Data: [ERA-KG-v0.9.1](https://drive.google.com/file/d/1ic5uS5L8XHWxHOhMII5gxeI-m3vtxPM7/view?usp=sharing)

### Features and Bug Fixes

* Fix rolling stocks fire prefix for tunnels
* Fix `era:otherPantographHead` predicate typo
* Add mappings for Internal Node Links inside border Micro Nodes

## [v0.9.0](https://github.com/julianrojas87/era-data-mappings/compare/v0.3.9...v0.9.0) (2020-09-09)

### Raw Data: [ERA-KG-v0.9.0](https://drive.google.com/file/d/1hxBeMLSUrpGFpQVDI_zsymllvXe-D0ZB/view?usp=sharing)

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
* Add mappings for gauge changeover facilities taxonomy and map as a named entity
* Add mappings for emergency brakes taxonomy and map as a named entity
* Add mappings for bake wight percentages taxonomy and map as a named entity
* Map other axle bearing monitoring
* Add mappings for ice conditions taxonomy and map as a named entity
* Shift to EU country vocabulary for mapping countries
* Exclude operational point type related triples from KG as they belong in the ERA-skos vocabulary
* Fix rolling stocks prefix for tunnels

## v0.3.9

### Raw Data: [ERA-KG-v0.3.9](https://drive.google.com/file/d/1UsOJxtAQP6q4bhf-iF78GbC1qy4TjVJ7/view?usp=sharing)

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
