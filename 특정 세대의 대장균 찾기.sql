WITH RECURSIVE RECUR_ECOLI AS (
    SELECT
        ID,
        1 AS GENERATION
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT
        E.ID,
        R.GENERATION + 1 AS GENERATION
    FROM RECUR_ECOLI AS R
    JOIN ECOLI_DATA AS E ON R.ID = E.PARENT_ID
)
-- 3세대의 대장균의 ID
SELECT ID
FROM RECUR_ECOLI
WHERE GENERATION = 3
-- 대장균의 ID 에 대해 오름차순 정렬
ORDER BY ID;
