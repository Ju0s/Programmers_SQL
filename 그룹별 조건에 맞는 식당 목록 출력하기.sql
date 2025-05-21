# SELECT COUNT(REVIEW_ID), COUNT(DISTINCT REVIEW_ID)
# FROM REST_REVIEW
-- REVIEW_ID는 고유한 값

-- 회원 이름, 리뷰 텍스트, 리뷰 작성일
SELECT
    M.MEMBER_NAME,
    R.REVIEW_TEXT,
    DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM REST_REVIEW AS R
LEFT JOIN MEMBER_PROFILE AS M ON R.MEMBER_ID = M.MEMBER_ID
-- 리뷰를 가장 많이 작성한 회원
WHERE R.MEMBER_ID = (SELECT MEMBER_ID
                     FROM REST_REVIEW
                     GROUP BY MEMBER_ID
                     ORDER BY COUNT(REVIEW_ID) DESC
                     LIMIT 1)
-- 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬
ORDER BY REVIEW_DATE, REVIEW_TEXT;
