
LOAD DATA INPATH '${hiveconf:SOURCE_DIR}/EVENTO.1.${hiveconf:DATE}.log' INTO TABLE EVENTO1;
SELECT
DATE_FORMAT(EVENT_DATE,'YYYY')	  AS YEAR_ID,
DATE_FORMAT(EVENT_DATE,'YYYYMM')  AS MONTH_ID,
DATE_FORMAT(EVENT_DATE,'YYYYw')  AS WEEK_ID,
DATE_FORMAT(EVENT_DATE,'YYYYMMdd')  AS DATE_ID,
DATE_FORMAT(EVENT_TIMESTAMP,'YYYYMMddHH')    AS HOUR_ID,
ATTRIBUTE3,
COUNT(*)                        AS MAIN_COUNT,
COUNT(DISTINCT ATTRIBUTE2)      AS ATTRIBUTE2_COUNT,
MAX(METRIC1)                    AS METRIC1_MAX,
SUM(METRIC2)                    AS METRIC2_SUM
FROM EVENTO1
WHERE DATE_FORMAT(EVENT_TIMESTAMP,'YYYYMMddHH')= '${hiveconf:DATE}'
GROUP BY 
DATE_FORMAT(EVENT_DATE,'YYYY'),
DATE_FORMAT(EVENT_DATE,'YYYYMM'),
DATE_FORMAT(EVENT_DATE,'YYYYw'),
DATE_FORMAT(EVENT_DATE,'YYYYMMdd'),
DATE_FORMAT(EVENT_TIMESTAMP,'YYYYMMddHH'),
ATTRIBUTE3
ORDER BY 1,2,3,4,5,6;