#!/bin/bash
#############################
## PARAMETER1 = SERVICE    ##
## PARAMETER1 = YYYYMMDDHH ##
#############################
SERVICE=$1
DATE_TO_PROCESS=$2
source /opt/scripts/etlvars.$SERVICE.cfg
hadoop fs -put -f $STAGING_DIR/$SERVICE.*.$DATE_TO_PROCESS.log $HADOOP_DIR/ 2>/dev/null
res=$?
if [ $res -eq 0 ]; then
	echo "Copied files" 
	echo "`ls $STAGING_DIR/$SERVICE.*.$DATE_TO_PROCESS.log`" 
	echo "To $HADOOP_DIR/ [OK]"
else
	echo "Error copying files $STAGING_DIR/$SERVICE.*.$DATE_TO_PROCESS.log"
        echo "To $HADOOP_DIR/ [KO]"
fi
exit $res
