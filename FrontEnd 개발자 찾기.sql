-- 개발자의 ID, 이메일, 이름, 성을 조회
SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS
-- Front End 스킬을 가진 개발자
WHERE SKILL_CODE & (SELECT SUM(CODE) FROM SKILLCODES WHERE CATEGORY = 'Front End') != 0
-- ID를 기준으로 오름차순 정렬
ORDER BY ID;
