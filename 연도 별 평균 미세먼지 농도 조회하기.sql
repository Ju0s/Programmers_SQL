-- 평균 미세먼지 오염도와 평균 초미세먼지 오염도, 소수 셋째 자리에서 반올림
SELECT
    YEAR(YM) AS YEAR,
    ROUND(AVG(PM_VAL1), 2) AS PM10,
    ROUND(AVG(PM_VAL2), 2) AS 'PM2.5'
FROM AIR_POLLUTION
-- 수원 지역
WHERE LOCATION2 = '수원'
-- 연도별
GROUP BY YEAR(YM)
-- 연도를 기준으로 오름차순 정렬
ORDER BY YEAR(YM);
