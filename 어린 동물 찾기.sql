-- 동물의 아이디와 이름
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
-- 젊은 동물
WHERE INTAKE_CONDITION != 'Aged'
-- 아이디 순으로 조회
ORDER BY ANIMAL_ID;
