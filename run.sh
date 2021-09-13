#!/bin/bash

# Replace config environment variables
envsub ./mappings/ERATV-manufacturers.yml
envsub ./mappings/ERATV-vehicle-types.yml
envsub ./mappings/RINF-ERATV-skos-concepts.yml
envsub ./mappings/RINF-national-lines.yml
envsub ./mappings/RINF-link-meso-micro.yml
envsub ./mappings/RINF-meso-net-elements.yml
envsub ./mappings/RINF-meso-net-relations.yml
envsub ./mappings/RINF-micro-net-elements.yml
envsub ./mappings/RINF-micro-net-relations.yml
envsub ./mappings/RINF-operational-points.yml
envsub ./mappings/RINF-sections-of-line.yml
envsub ./mappings/RINF-tunnels.yml
envsub ./mappings/RINF-platforms.yml
envsub ./mappings/RINF-contact-line-systems.yml
envsub ./mappings/RINF-etcs-levels.yml
envsub ./mappings/RINF-train-detection-systems.yml
envsub ./mappings/RINF-op-tracks.yml
envsub ./mappings/RINF-sol-tracks.yml
envsub ./mappings/RINF-sidings.yml
envsub ./mappings/RINF-op-applicability.yml
envsub ./mappings/RINF-sol-not-applicable.yml
envsub ./mappings/RINF-sol-not-yet-available.yml

# Execute mapping process
./map-turtle.sh ${KG_VERSION}