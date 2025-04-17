WITH MAX_SIZE_YEAR AS (
    SELECT
        YEAR(DIFFERENTIATION_DATE) AS YEAR,
        MAX(SIZE_OF_COLONY) AS YEAR_SIZE_OF_COLONY
    FROM ECOLI_DATA
    GROUP BY YEAR
)
-- 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID)
SELECT
    YEAR(E.DIFFERENTIATION_DATE) AS YEAR,
    -- 분화된 연도별 대장균 크기의 편차는 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기로 구하며
    M.YEAR_SIZE_OF_COLONY - E.SIZE_OF_COLONY AS YEAR_DEV,
    E.ID
FROM ECOLI_DATA AS E
LEFT JOIN MAX_SIZE_YEAR AS M ON YEAR(E.DIFFERENTIATION_DATE) = M.YEAR
-- 연도에 대해 오름차순으로 정렬하고 같은 연도에 대해서는 대장균 크기의 편차에 대해 오름차순으로 정렬
ORDER BY YEAR, YEAR_DEV;
