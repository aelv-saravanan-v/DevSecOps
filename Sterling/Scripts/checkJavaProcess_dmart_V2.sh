#!/bin/bash
# Function to check Java process count
check_java_process() {
    local count=$(pgrep -c java)
    echo "$count"
}
# Check Java process count
java_process_count=$(check_java_process)
if [ "$java_process_count" -eq 0 ]; then
    echo "ZERO"
else
    echo "NONZERO"
fi
