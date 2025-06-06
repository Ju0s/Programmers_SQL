-- 동물의 아이디와 이름, 중성화 여부
SELECT
    ANIMAL_ID,
    NAME,
    -- 중성화가 되어있다면 'O', 아니라면 'X'
    CASE
        WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
        ELSE 'X'
    END AS 중성화
FROM ANIMAL_INS
-- 아이디 순으로 조회
ORDER BY ANIMAL_ID;
