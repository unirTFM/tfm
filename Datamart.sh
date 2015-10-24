#!/bin/bash
######################################
## PARAMETER1 = SERVICE             ##
## PARAMETER1 = PERIOD              ##
## PARAMETER3 = YYYYMMDDHH          ##
######################################
SERVICE=$1
PERIOD=$2
DATE_TO_PROCESS=$3
source /opt/scripts/etlvars.$SERVICE.cfg
chown -R mysql $AGG_DIR/$SERVICE.$PERIOD.*.$DATE_TO_PROCESS.log

NUM_QUERIES=`ls $AGG_DIR/$SERVICE.$PERIOD.*.$DATE_TO_PROCESS.log | wc -l`
for i in `seq 1 $NUM_QUERIES`
do
	SQL=$SQL_DIR/$SERVICE.$PERIOD.$i.sh
	echo "Starting to $SERVICE.$PERIOD.$i"
	$SQL $SERVICE $PERIOD $DATE_TO_PROCESS
	if [ $? -ne 0 ]; then
		exit 1
	fi
	echo "Finalize $SERVICE.$PERIOD.$i"
done
exit 0
