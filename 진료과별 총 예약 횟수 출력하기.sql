-- 환자 수를 진료과코드 별로 조회
SELECT
    MCDP_CD AS '진료과코드',
    COUNT(*) AS '5월예약건수'
FROM APPOINTMENT
-- 2022년 5월
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
GROUP BY MCDP_CD
-- 환자 수를 기준으로 오름차순 정렬, 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬
ORDER BY 5월예약건수, 진료과코드;
