SELECT
-- ID, 이메일, 이름, 성
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPER_INFOS
-- Python 스킬을 가진 개발자
WHERE SKILL_1 = 'Python'
    OR SKILL_2 = 'Python'
    OR SKILL_3 = 'Python'
-- ID를 기준으로 오름차순 정렬
ORDER BY ID
