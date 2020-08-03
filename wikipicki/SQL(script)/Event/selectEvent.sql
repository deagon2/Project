
이벤트조회
SELECT 	* 
FROM 	board 
WHERE  	board_no = 65

이벤트리스트조회

페이징-무한스크롤
SELECT 	* 
FROM 	board 
WHERE 	board_type = 'event' 
LIMIT 	3 
	OFFSET 1

광고조회
SELECT 	* 
FROM 	ad 
WHERE 	ad_no = 1;

광고리스트조회

페이징-무한스크롤
SELECT 	* 
FROM 	ad 
LIMIT 	2 
	OFFSET 1

