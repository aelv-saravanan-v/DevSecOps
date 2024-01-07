#!/bin/bash

# Function to get the total count of Java processes
get_java_process_count() {
  local count=$(pgrep -c java)
  echo "$count"
}

java_process="/opt/IBM/OMS10/jdk/bin/java"

# Get process IDs of running Java processes
pids=$(ps -eaf | grep "$java_process" | grep servers | grep -v grep | awk -F " " '{print $2}')

# Check if Java process count is equal to 0
if [ $(get_java_process_count) -eq 0 ]; then
  echo "No Java processes are running. No need to stop."
else
  # Display the initial count of Java processes
  echo "Initial count of Java processes: $(get_java_process_count)"

  if [ -n "$pids" ]; then
    # Send SIGTERM to the processes
    for i in $pids; do
      echo "Sending SIGTERM to process with PID $i..."
      kill -15 $i
    done

    # Wait for processes to exit gracefully
    sleep 5

    # Check if processes are still running
    for i in $pids; do
      if ps -p $i > /dev/null; then
        echo "Failed to terminate process with PID $i gracefully, sending SIGKILL..."
        kill -9 $i
      else
        echo "Process with PID $i terminated gracefully"
      fi
    done
  else
    echo "No matching Java processes found."
  fi
  sleep 5
  # Display the count of Java processes after stopping
  echo "Count of Java processes after stopping: $(get_java_process_count)"
fi

