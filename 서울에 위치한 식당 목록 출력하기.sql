SELECT
    -- 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수
    RI.REST_ID,
    RI.REST_NAME,
    RI.FOOD_TYPE,
    RI.FAVORITES,
    RI.ADDRESS,
    -- 리뷰 평균점수는 소수점 세 번째 자리에서 반올림 해주시고
    ROUND(AVG(RR.REVIEW_SCORE),2) AS SCORE
FROM REST_INFO AS RI
JOIN REST_REVIEW AS RR ON RI.REST_ID = RR.REST_ID
-- 서울에 위치한 식당들
WHERE RI.ADDRESS LIKE '서울%'
GROUP BY RI.REST_ID
-- 결과는 평균점수를 기준으로 내림차순 정렬해주시고, 
-- 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬해주세요.
ORDER BY SCORE DESC, RI.FAVORITES DESC;
