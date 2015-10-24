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

mysql -u $DATAMART_USER -p$DATAMART_PASS -D $DATAMART_DB -e "LOAD DATA LOCAL INFILE '$AGG_DIR/$SERVICE.$PERIOD.2.$DATE_TO_PROCESS.log' REPLACE INTO TABLE FT_EVENTO_MONTH_2 FIELDS TERMINATED BY '\t' (YEAR_ID, MONTH_ID, ATTRIBUTE1, METRIC1, METRIC2, METRIC3);"


