-- 조회수가 가장 높은 중고거래 게시물
WITH BEST_VIEWS AS (
    SELECT *
    FROM USED_GOODS_BOARD
    ORDER BY VIEWS DESC
    LIMIT 1
)
-- 첨부파일 경로
-- 기본적인 파일경로는 /home/grep/src/ 이며, 게시글 ID를 기준으로 디렉토리가 구분되고, 파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력
SELECT CONCAT('/home/grep/src/', F.BOARD_ID, '/', F.FILE_ID, F.FILE_NAME, FILE_EXT) AS FILE_PATH
FROM BEST_VIEWS AS B
LEFT JOIN USED_GOODS_FILE AS F ON B.BOARD_ID = F.BOARD_ID
-- FILE ID를 기준으로 내림차순 정렬
ORDER BY F.FILE_ID DESC;
