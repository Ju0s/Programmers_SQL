-- 아이디와 이름
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
-- 아픈 동물
WHERE INTAKE_CONDITION = 'Sick'
-- 아이디 순
ORDER BY ANIMAL_ID;
