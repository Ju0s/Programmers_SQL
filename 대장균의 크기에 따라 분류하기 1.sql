-- 대장균 개체의 ID(ID) 와 분류(SIZE)
SELECT
    ID,
    CASE
        WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN SIZE_OF_COLONY <= 1000 THEN 'MEDIUM'
        ELSE 'HIGH'
    END AS SIZE
FROM ECOLI_DATA
-- 개체의 ID 에 대해 오름차순 정렬
ORDER BY ID;
