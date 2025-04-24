-- 의사의 이름, 의사ID, 진료과, 고용일자
SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d')
FROM DOCTOR
-- 진료과가 흉부외과(CS)이거나 일반외과(GS)
WHERE MCDP_CD IN ('CS', 'GS')
-- 고용일자를 기준으로 내림차순 정렬, 고용일자가 같다면 이름을 기준으로 오름차순 정렬
ORDER BY HIRE_YMD DESC, DR_NAME;
