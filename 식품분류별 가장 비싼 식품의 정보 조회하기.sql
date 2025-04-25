-- 식품의 분류, 가격, 이름
SELECT
    CATEGORY,
    PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) IN (
    -- 식품분류별로 가격이 제일 비싼 식품
    SELECT
        CATEGORY,
        MAX(PRICE) AS PRICE
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
)
    -- 식품분류가 '과자', '국', '김치', '식용유'인 경우
    AND CATEGORY IN ('과자', '국', '김치', '식용유')
-- 식품 가격을 기준으로 내림차순 정렬
ORDER BY PRICE DESC;
