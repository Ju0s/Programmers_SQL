-- 아이스크림의 맛
SELECT F.FLAVOR
FROM FIRST_HALF AS F
JOIN ICECREAM_INFO AS I ON F.FLAVOR = I.FLAVOR
-- 상반기 아이스크림 총주문량이 3,000보다 높으면서
WHERE F.TOTAL_ORDER > 3000
-- 아이스크림의 주 성분이 과일
    AND I.INGREDIENT_TYPE = 'fruit_based'
-- 총주문량이 큰 순서대로 조회
ORDER BY F.TOTAL_ORDER DESC;
