-- 아이디와 이름
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
-- 이름에 "EL"이 들어가는 
-- 이름의 대소문자는 구분하지 않습니다
WHERE UPPER(NAME) LIKE '%EL%'
    -- 개
    AND ANIMAL_TYPE = 'Dog'
-- 이름 순으로 조회
ORDER BY NAME;
