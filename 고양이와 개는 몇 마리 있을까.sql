-- 동물 종류 조회
-- SELECT DISTINCT ANIMAL_TYPE FROM ANIMAL_INS;
-- Cat, Dog

-- 고양이와 개가 각각 몇 마리인지 조회
SELECT
    ANIMAL_TYPE,
    COUNT(*) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
-- 고양이를 개보다 먼저 조회
ORDER BY ANIMAL_TYPE;
