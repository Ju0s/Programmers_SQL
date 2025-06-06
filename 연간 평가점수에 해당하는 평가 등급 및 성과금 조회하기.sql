-- 사번, 성명, 평가 등급, 성과금을 조회
SELECT
    E.EMP_NO,
    E.EMP_NAME,
    CASE
        WHEN AVG(G.SCORE) >= 96 THEN 'S'
        WHEN AVG(G.SCORE) >= 90 THEN 'A'
        WHEN AVG(G.SCORE) >= 80 THEN 'B'
        ELSE 'C'
    END AS GRADE,
    CASE
        WHEN AVG(G.SCORE) >= 96 THEN E.SAL * 0.2
        WHEN AVG(G.SCORE) >= 90 THEN E.SAL * 0.15
        WHEN AVG(G.SCORE) >= 80 THEN E.SAL * 0.1
        ELSE 0
    END AS BONUS
FROM HR_EMPLOYEES AS E
LEFT JOIN HR_GRADE AS G ON E.EMP_NO = G.EMP_NO
GROUP BY EMP_NO
-- 사번 기준으로 오름차순 정렬
ORDER BY EMP_NO;
