-- 공장 ID, 공장 이름, 주소
SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM FOOD_FACTORY
-- 강원도에 위치한 식품공장
WHERE ADDRESS LIKE '강원도%'
-- 공장 ID를 기준으로 오름차순 정렬
ORDER BY FACTORY_ID;
