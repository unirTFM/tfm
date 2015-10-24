!#/bin/bash
######################################
## PARAMETER1 = SERVICE             ##
## PARAMETER1 = PERIOD              ##
## PARAMETER3 = YYYYMMDDHH          ##
######################################
SERVICE=$1
PERIOD=$2
DATE_TO_PROCESS=$3
source /opt/scripts/etlvars.$SERVICE.cfg

mysql -u $DATAMART_USER -p$DATAMART_PASS -D $DATAMART_DB -e "LOAD DATA LOCAL INFILE '$AGG_DIR/$SERVICE.$PERIOD.3.$DATE_TO_PROCESS.log' REPLACE INTO TABLE FT_EVENTO_DAY_3 FIELDS TERMINATED BY '\t' (YEAR_ID, MONTH_ID, WEEK_ID, DATE_ID, METRIC1, METRIC2, METRIC3, METRIC4);"


