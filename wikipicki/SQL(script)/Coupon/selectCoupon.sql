쿠폰번호조회 - 쿠폰발행에 넣을 쿠폰번호 가져오기
SELECT 	* 
FROM 	coupon 
ORDER 
	BY 	coupon_no 
	DESC	LIMIT 1

쿠폰리스트조회
SELECT 	* 
FROM 	coupon 
LIMIT 	0
	, 	2

발행한 쿠폰
SELECT 	* 
FROM 	coupon  

보유한쿠폰 
SELECT 	* 
FROM 	coupon c
	, 	coupon_history ch 
WHERE 	c.coupon_no = ch.coupon_no 
	AND user_id = 'user7'

사용한쿠폰
SELECT	* 
FROM 	coupon c
	, 	coupon_history ch 
WHERE 	c.coupon_no = ch.coupon_no 
	AND user_id = 'user7' 
	AND use_date 
	IS 
		NOT NULL

페이징-무한스크롤떄
SELECT 	* 
FROM 	coupon 
WHERE 	name = '이천원권' 
LIMIT 	3 
	OFFSET 1

쿠폰내역조회
SELECT 	* 
FROM 	coupon_history 
WHERE 	user_id = 'user7' 
LIMIT 	0
	,	2

페이징
SELECT 	* 
FROM 	coupon_history 
WHERE 	user_id = 'user7' 
LIMIT 	3 
	OFFSET 1

