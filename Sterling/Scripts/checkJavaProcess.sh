#!/bin/bash
# Function to check Java process count
check_java_process() {
    local count=$(pgrep -c java)
    echo "$count"
}
# Check Java process count
java_process_count=$(check_java_process)
echo """
===================================================================
*******************************************************************
Java process count: $java_process_count
*******************************************************************
===================================================================
"""
if [ "$java_process_count" -eq 0 ]; then
    echo """
===================================================================
*******************************************************************
No Java processes are running. Starting the servers
*******************************************************************
===================================================================
"""
    # Indicate success (optional, as the script will naturally exit without an error)
    exit 0
else
    echo """
===================================================================
*******************************************************************
Java processes are running. Pipeline execution continues.
*******************************************************************
===================================================================
"""
    # Indicate failure to Jenkins pipeline
    exit 1
fi