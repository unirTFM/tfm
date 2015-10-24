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

NUM_QUERIES=`ls /opt/scripts/hql/$SERVICE.$PERIOD.*.hql | wc -l`
for i in `seq 1 $NUM_QUERIES`
do
	HQL=$HQL_DIR/$SERVICE.$PERIOD.$i.hql
	echo "Starting to $SERVICE.$PERIOD.$i"
	hive --silent --database $HIVE_DB tfm --hiveconf DATE=$DATE_TO_PROCESS --hiveconf SOURCE_DIR=$HADOOP_DIR -f $HQL > $AGG_DIR/$SERVICE.$PERIOD.$i.$DATE_TO_PROCESS.log; 
	if [ $? -ne 0 ]; then
		exit 1
	fi
	echo "Finalize $SERVICE.$PERIOD.$i"
done
exit 0
