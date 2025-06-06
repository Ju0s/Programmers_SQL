-- 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)
SELECT
    BOOK_ID,
    DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
-- 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트
WHERE YEAR(PUBLISHED_DATE) = 2021
    AND CATEGORY = '인문'
-- 출판일을 기준으로 오름차순 정렬
ORDER BY PUBLISHED_DATE;
