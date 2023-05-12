#!/bin/bash

echo "Starting TVLA on 128 individual bits..." > tvla_128_results.txt

for bitnum in {0..127}
do
   ./tvla.py --cfg-file tvla_cfg_aes.yaml --bit-select $bitnum run-tvla >> tvla_128_results.txt
done