-- 자동차 ID
-- 중복이 없어야 하며,
SELECT DISTINCT C.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR C
LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H ON C.CAR_ID = H.CAR_ID
-- 자동차 종류가 '세단'인 자동차
WHERE C.CAR_TYPE = '세단'
    -- 10월에 대여를 시작한 기록이 있는
    AND MONTH(H.START_DATE) = '10'
-- 자동차 ID를 기준으로 내림차순 정렬
ORDER BY CAR_ID DESC;
