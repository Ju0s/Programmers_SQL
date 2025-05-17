-- 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력
SELECT
    C.CAR_ID,
    C.CAR_TYPE,
    FLOOR(C.DAILY_FEE * 30 * (1 - (SELECT D.DISCOUNT_RATE / 100.0
                                   FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS D
                                   WHERE C.CAR_TYPE = D.CAR_TYPE
                                   AND D.DURATION_TYPE = '30일 이상'))) AS FEE
FROM CAR_RENTAL_COMPANY_CAR AS C
-- 자동차 종류가 '세단' 또는 'SUV' 인 자동차
WHERE C.CAR_TYPE IN ('세단', 'SUV')
    -- 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고
    AND C.CAR_ID NOT IN (SELECT CAR_ID
                         FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                         WHERE START_DATE <= '2022-11-30'
                            AND END_DATE >= '2022-11-01')
    -- 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
    AND FLOOR(C.DAILY_FEE * 30 * (1 - (SELECT D.DISCOUNT_RATE / 100.0
                                   FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS D
                                   WHERE C.CAR_TYPE = D.CAR_TYPE
                                   AND D.DURATION_TYPE = '30일 이상'))) BETWEEN 500000 AND 1999999
-- 대여 금액을 기준으로 내림차순 정렬하고, 대여 금액이 같은 경우 자동차 종류를 기준으로 오름차순 정렬, 자동차 종류까지 같은 경우 자동차 ID를 기준으로 내림차순 정렬
ORDER BY FEE DESC, CAR_TYPE, CAR_ID DESC;
