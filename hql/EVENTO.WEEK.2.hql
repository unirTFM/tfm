
SELECT
DATE_FORMAT(EVENT_DATE,'YYYY')    AS YEAR_ID,
DATE_FORMAT(EVENT_DATE,'YYYYw')  AS WEEK_ID,
ATTRIBUTE1,
COUNT(*)                        AS MAIN_COUNT,
AVG(METRIC1)                    AS METRIC1_AVG,
MIN(METRIC2)                    AS METRIC2_MIN
FROM EVENTO2
WHERE DATE_FORMAT(EVENT_DATE,'YYYYMMddHH') BETWEEN '${hiveconf:DATE}' AND 
FROM_UNIXTIME(UNIX_TIMESTAMP('${hiveconf:DATE}','yyyyMMddHH')+518400,'yyyyMMddHH')
GROUP BY
DATE_FORMAT(EVENT_DATE,'YYYY'),
DATE_FORMAT(EVENT_DATE,'YYYYw'),
ATTRIBUTE1
ORDER BY 1,2,3;

