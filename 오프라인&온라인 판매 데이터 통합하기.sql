-- 판매 날짜, 상품ID, 유저ID, 판매량
SELECT
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM (
    SELECT
        SALES_DATE,
        PRODUCT_ID,
        USER_ID,
        SALES_AMOUNT
    FROM ONLINE_SALE

    UNION ALL

    SELECT
        SALES_DATE,
        PRODUCT_ID,
        -- OFFLINE_SALE 테이블의 판매 데이터의 USER_ID 값은 NULL
        NULL AS USER_ID,
        SALES_AMOUNT
    FROM OFFLINE_SALE
) AS SALE
-- 2022년 3월
WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-03'
-- 판매일을 기준으로 오름차순 정렬, 판매일이 같다면 상품 ID를 기준으로 오름차순, 상품ID까지 같다면 유저 ID를 기준으로 오름차순 정렬
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID;
