-- 동물의 아이디와 이름, 보호 시작일
SELECT
    ANIMAL_ID,
    NAME,
    DATETIME
FROM ANIMAL_INS
-- 이름 순으로 조회, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저
ORDER BY NAME, DATETIME DESC;
