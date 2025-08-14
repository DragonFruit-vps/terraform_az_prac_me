#Bash Script for report if CPU usage exceeds the threshold

#!/bin/bash

threshold=80

cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | cut -d '.' -f1)

#actuall cpu usage
cpu_usage=$((100 - cpu_idle))

if [ "$cpu_usage" -gt "$threshold" ]; then
        echo "high alert"
else
        echo "usage is $cpu_usage"
fi

