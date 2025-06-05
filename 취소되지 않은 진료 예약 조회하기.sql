-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시
SELECT
    A.APNT_NO,
    P.PT_NAME,
    P.PT_NO,
    A.MCDP_CD,
    D.DR_NAME,
    A.APNT_YMD 
FROM APPOINTMENT A
JOIN PATIENT P ON A.PT_NO = P.PT_NO
JOIN DOCTOR D ON A.MDDR_ID = D.DR_ID
-- 2022년 4월 13일 
WHERE DATE_FORMAT(A.APNT_YMD, '%Y-%m-%d') = '2022-04-13'
    -- 취소되지 않은 
    AND A.APNT_CNCL_YN = 'N'
    -- 흉부외과(CS) 
    AND A.MCDP_CD = 'CS'
-- 진료예약일시를 기준으로 오름차순 정렬
ORDER BY APNT_YMD;
