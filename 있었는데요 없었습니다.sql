-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회
SELECT
    I.ANIMAL_ID,
    I.NAME
FROM ANIMAL_INS AS I
JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.DATETIME > O.DATETIME
-- 보호 시작일이 빠른 순
ORDER BY I.DATETIME;
