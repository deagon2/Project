
테이블 조회 
SELECT 	* 
FROM 	board
 
-자유게시판-         
          
자유게시판 상세조회
------------------------------------
SELECT 	* 
FROM 	board 
WHERE 	board_type = 'free' 
	AND board_no = #{Value}
------------------------------------

자유게시판 리스트조회
------------------------------------
SELECT 	* 
FROM 	board 
WHERE 	board_type = 'free'
------------------------------------


자유게시판 해당글 댓글 갯수조회
------------------------------------
SELECT 	COUNT(*)
FROM 	COMMENT
WHERE 	board_no = '3'
------------------------------------

- 댓글 -

자유게시판 해당글 댓글리스트 보기
------------------------------------
SELECT	*
FROM 	COMMENT
WHERE 	board_no = '3'
------------------------------------



