

자유게시판 조회수
------------------------------------
UPDATE 	BOARD 
SET 	HIT = IFNULL(HIT, 0) + 1
WHERE 	board_no = '3'
------------------------------------


자유게시판 글,제목 수정
------------------------------------
UPDATE 	BOARD 
SET 	title = '제목수정'
	, 	content = '내용수정' 
WHERE 	board_type = 'free' 
	and board_no = '3'
------------------------------------


자유게시판 댓글 수정
------------------------------------
UPDATE 	COMMENT
SET		CONTENT = '반갑습니다.'
WHERE 	comment_no = '1'
------------------------------------


