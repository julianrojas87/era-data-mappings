#!/bin/bash

# Replace config environment variables
envsub ./mappings/ERATV-manufacturers.yml
envsub ./mappings/ERATV-vehicle-types.yml
envsub ./mappings/RINF-ERATV-skos-concepts.yml
envsub ./mappings/RINF-line-national-ids.yml
envsub ./mappings/RINF-link-meso-micro.yml
envsub ./mappings/RINF-meso-net-elements.yml
envsub ./mappings/RINF-meso-net-relations.yml
envsub ./mappings/RINF-micro-net-elements.yml
envsub ./mappings/RINF-micro-net-relations.yml
envsub ./mappings/RINF-operational-points.yml
envsub ./mappings/RINF-sections-of-line.yml
envsub ./mappings/RINF-tunnels.yml

# Execute mapping process
./map-turtle.sh ${KG_VERSION}