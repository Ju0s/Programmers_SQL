-- 이름과 해당 이름이 쓰인 횟수
SELECT
    NAME,
    COUNT(*) AS COUNT
FROM ANIMAL_INS
-- 이름이 없는 동물은 집계에서 제외
WHERE NAME IS NOT NULL
GROUP BY NAME
-- 두 번 이상 쓰인
HAVING COUNT >= 2
-- 이름 순으로 조회
ORDER BY NAME;
