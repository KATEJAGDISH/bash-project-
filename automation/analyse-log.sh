


#!/bin/bash

LOG_DIR="/Users/ARROWS/Desktop/linux/log/Bash_project/log"
REPORT_DIR="/Users/ARROWS/Desktop/linux/log/Bash_project/report"
REPORT_FILE="$REPORT_DIR/log_analysis_report.txt"

ERROR_PATTERN=("ERROR" "FATAL" "CRITICAL"  "WARNING" "INFO" )


echo "==============================================================================================================================================================================================================="
echo "analysing log file" >> "$REPORT_FILE"
echo "===============================================================================================================================================================================================================" >> "$REPORT_FILE"
   

echo -e "\nlist of log files uapdate last 24hr" >> "$REPORT_FILE"
LOG_FILE=$(find  $LOG_DIR  -name "*.log" -mtime -1)
echo "$LOG_FILE" >> "$REPORT_FILE"


for LOG_FILE in $LOG_FILE ; do

    echo -e "\n">> "$REPORT_FILE"
    echo "===============================================================================================================================================================================================================">> "$REPORT_FILE"
    echo "=====================================================================$LOG_FILE============================================================================================">> "$REPORT_FILE"
    echo "===============================================================================================================================================================================================================" >> "$REPORT_FILE"
   for PATTERN in ${ERROR_PATTERN[@]}; do

        echo -e "\nlist$PATTERN logs in $LOG_FILE  file" >> "$REPORT_FILE"
        grep "$PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

        echo -e "\nNumber of $PATTERN in this $LOG_FILE  file" >> "$REPORT_FILE"
        
        ERROR_COUNT=$(grep -c "$PATTERN"  "$LOG_FILE")
        echo $ERROR_COUNT >> "$REPORT_FILE"

        if [ "$ERROR_COUNT" -gt 10 ]; then 
            printf "\n ⚠️ action requied : to many $PATTERN error in this log file  $LOG_FILE ‼️"
        fi    
        if [ "$ERROR_COUNT" -lt 5 ]; then 
        printf "\n dont need any action server $PATTERN is safe  $LOG_FILE "
        fi


    done

done

echo -e "\n Log anaylisis is done and report are save in the $REPORT_FILE"
