-- 회원이 몇 명인지
SELECT COUNT(*) AS USERS
FROM USER_INFO
-- 2021년에 가입한 회원
WHERE YEAR(JOINED) = 2021
-- 나이가 20세 이상 29세 이하
    AND AGE BETWEEN 20 AND 29;
