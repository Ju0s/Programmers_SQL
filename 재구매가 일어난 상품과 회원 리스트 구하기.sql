-- 재구매한 회원 ID와 재구매한 상품 ID
SELECT
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
-- 동일한 회원이 동일한 상품을 재구매
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >= 2
-- 회원 ID를 기준으로 오름차순 정렬, 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬
ORDER BY USER_ID, PRODUCT_ID DESC;
