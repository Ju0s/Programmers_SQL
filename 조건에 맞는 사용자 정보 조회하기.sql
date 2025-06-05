-- 사용자 ID, 닉네임, 전체주소, 전화번호
SELECT
    U.USER_ID,
    U.NICKNAME,
    -- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력
    CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS 전체주소,
    -- 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력
    CONCAT_WS('-', SUBSTRING(U.TLNO, 1, 3), SUBSTRING(U.TLNO, 4, 4), SUBSTRING(U.TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_BOARD B
LEFT JOIN USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
GROUP BY U.USER_ID
-- 중고 거래 게시물을 3건 이상 등록한 사용자
HAVING COUNT(BOARD_ID) >= 3
-- 회원 ID를 기준으로 내림차순 정렬
ORDER BY USER_ID DESC;
