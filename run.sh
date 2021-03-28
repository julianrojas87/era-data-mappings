#!/bin/bash

# Replace config environment variables
envsub ./mappings/internal-node-links-artificial.yml
envsub ./mappings/line-national-ids.yml
envsub ./mappings/manufacturers.yml
envsub ./mappings/micro-links.yml
envsub ./mappings/micro-nodes.yml
envsub ./mappings/node-ports.yml
envsub ./mappings/operational-points.yml
envsub ./mappings/sol-tracks.yml
envsub ./mappings/tunnels.yml
envsub ./mappings/vehicle-types.yml
envsub ./mappings/skos-concepts.yml

# Execute mapping process
./map-turtle.sh ${KG_VERSION}