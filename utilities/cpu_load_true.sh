#!/bin/bash
#
# Script to generate a load on 80% of CPU cores.
# If there is only one core, the load is generated on that core.
# To stop: killall true
num_cores=$(nproc)
cores_to_load=$(echo "scale=0; $num_cores * 0.8 / 1" | bc)

# Ensure at least one core is loaded, even if 80% is less than 1
if (( cores_to_load == 0 && num_cores > 0 )); then
  cores_to_load=1
fi

echo "Total CPU cores: $num_cores"
echo "Loading approximately $cores_to_load cores (80% of total)"

for i in $(seq 1 $cores_to_load); do
  while true; do true; done &
done
