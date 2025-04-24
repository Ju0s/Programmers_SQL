-- 환자이름, 환자번호, 성별코드, 나이, 전화번호
SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    -- 전화번호가 없는 경우, 'NONE'으로 출력
    CASE WHEN TLNO IS NULL THEN 'NONE' ELSE TLNO END AS TLNO
FROM PATIENT
-- 12세 이하인 여자환자
WHERE AGE <= 12
    AND GEND_CD = 'W'
-- 나이를 기준으로 내림차순 정렬, 나이 같다면 환자이름을 기준으로 오름차순 정렬
ORDER BY AGE DESC, PT_NAME;
