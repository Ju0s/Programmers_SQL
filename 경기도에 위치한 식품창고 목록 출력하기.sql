-- 창고의 ID, 이름, 주소, 냉동시설 여부를 조회
SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    ADDRESS,
    -- 냉동시설 여부가 NULL인 경우, 'N'으로 출력
    CASE WHEN FREEZER_YN IS NULL THEN 'N' ELSE FREEZER_YN END AS FREEZER_YN
FROM FOOD_WAREHOUSE
-- 경기도에 위치한 창고
WHERE ADDRESS LIKE '%경기도%'
-- 창고 ID를 기준으로 오름차순 정렬
ORDER BY WAREHOUSE_ID;
