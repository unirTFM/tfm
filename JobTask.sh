#!/bin/bash
#############################
## PARAMETER1 = SERVICE    ##
## PARAMETER1 = PERIOD     ##
#############################
SERVICE=$1
PERIOD=$2
source /opt/scripts/etlvars.$SERVICE.cfg

REPOSITORY=kettleTFM
USER=admin
PASS=admin
LOGLEVEL=Basic
#LOGLEVEL=Rowlevel
DIR=/
JOB=JobTask
LOGFILE=JobTask.$SERVICE.$PERIOD.log

CMDLINE="-rep=$REPOSITORY -user=$USER -pass=$PASS -dir=$DIR -job=$JOB -level=$LOGLEVEL $SERVICE $PERIOD"

pushd $KETTLE_DIR > /dev/null
$KETTLE_APP $CMDLINE > $ETL_DIR/$LOGFILE
popd > /dev/null

