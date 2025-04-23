-- 노선, 총 누계 거리, 평균 역 사이 거리
SELECT
    ROUTE,
    -- 총 누계거리는 소수 둘째자리에서 반올림 한 뒤 단위(km)를 함께 출력
    CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,
    -- 평균 역 사이 거리는 소수 셋째 자리에서 반올림 한 뒤 단위(km)를 함께 출력
    CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
-- 노선별로
GROUP BY ROUTE
-- 총 누계 거리를 기준으로 내림차순 정렬
ORDER BY SUM(D_BETWEEN_DIST) DESC;
