WITH ECOLI_RANKS AS (
    SELECT
        ID,
        -- 대장균 개체의 크기를 내름차순으로 정렬했을 때
        ROW_NUMBER () OVER (ORDER BY SIZE_OF_COLONY DESC) AS ROW_NUM,
        COUNT(*) OVER () AS TOTAL_ROWS
    FROM ECOLI_DATA
)
SELECT
    ID,
    -- 상위 0% ~ 25% 를 'CRITICAL', 26% ~ 50% 를 'HIGH', 51% ~ 75% 를 'MEDIUM', 76% ~ 100% 를 'LOW'
    CASE
        WHEN ROW_NUM <= TOTAL_ROWS * 0.25 THEN 'CRITICAL'
        WHEN ROW_NUM <= TOTAL_ROWS * 0.50 THEN 'HIGH'
        WHEN ROW_NUM <= TOTAL_ROWS * 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM ECOLI_RANKS
-- 결과는 개체의 ID 에 대해 오름차순 정렬
ORDER BY ID;
