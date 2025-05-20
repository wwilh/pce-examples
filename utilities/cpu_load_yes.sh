#!/bin/bash
#
# Script to generate a load on 80% of CPU cores.
# If there is only one core, the load is generated on that core.
# To stop: killall yes

# Get the total number of CPU cores
total_cores=$(nproc)

# Calculate 80% of the total cores, rounding up to ensure it's "over 80%"
# We add 0.5 before truncating to effectively round up when casting to integer.
cores_to_load=$(echo "($total_cores * 0.8) / 1 + 0.5" | bc | cut -d'.' -f1)

# Ensure at least 1 core is loaded if the system has very few cores
if (( cores_to_load == 0 && total_cores > 0 )); then
    cores_to_load=1
fi

echo "Total CPU cores: $total_cores"
echo "Loading approximately $cores_to_load cores (80% of total, rounded)."

# Loop and start the CPU-intensive 'yes' process in the background for the calculated number of cores
for i in $(seq 1 "$cores_to_load"); do
    yes > /dev/null &
done

echo "CPU load generation started using 'yes > /dev/null'. Use 'top' or 'htop' to monitor."
echo "To stop: killall yes"