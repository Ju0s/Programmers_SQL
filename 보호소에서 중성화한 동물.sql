-- 보호소에 들어올 당시에는 중성화되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회
SELECT
    AI.ANIMAL_ID,
    AI.ANIMAL_TYPE,
    AI.NAME
FROM ANIMAL_INS AS AI
LEFT JOIN ANIMAL_OUTS AS AO ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE LIKE '%Intact%'
    AND AO.SEX_UPON_OUTCOME NOT LIKE '%Intact%'
-- 아이디 순으로 조회
ORDER BY ANIMAL_ID;
