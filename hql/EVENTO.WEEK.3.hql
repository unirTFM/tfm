SELECT
DATE_FORMAT(E1.EVENT_DATE,'YYYY')    AS YEAR_ID,
DATE_FORMAT(E1.EVENT_DATE,'YYYYw')  AS WEEK_ID,
COUNT(*)            	           AS MAIN_COUNT,
COUNT(DISTINCT E1.ATTRIBUTE2)      AS ATTRIBUTE2_COUNT,
MIN(E2.METRIC1)                    AS METRIC1_MIN,
SUM(E2.METRIC2)                    AS METRIC2_SUM
FROM EVENTO1 E1 JOIN EVENTO2 E2 ON E1.EVENT_ID = E2.EVENT_ID 
WHERE DATE_FORMAT(E1.EVENT_DATE,'YYYYMMddHH') BETWEEN '${hiveconf:DATE}' AND 
FROM_UNIXTIME(UNIX_TIMESTAMP('${hiveconf:DATE}','yyyyMMddHH')+518400,'yyyyMMddHH')
GROUP BY 
DATE_FORMAT(E1.EVENT_DATE,'YYYY'),
DATE_FORMAT(E1.EVENT_DATE,'YYYYw'),
ORDER BY 1,2;
