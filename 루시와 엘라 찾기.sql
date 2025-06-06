-- 아이디와 이름, 성별 및 중성화 여부
SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM ANIMAL_INS
-- 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty');
