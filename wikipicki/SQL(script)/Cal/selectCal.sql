
정산상세조회
SELECT	*
FROM	cal
WHERE 	cal_no=13

-----------------------

정산 리스트
SELECT	*
FROM	cal
WHERE	fran_no = #{cal.franNo}
LIMIT	#{search.listSize}
	OFFSET #{search.startList}

-----------------------

가맹점 매출현황
SELECT 	fran_no 
	, 	fran_name 
	, 	COUNT(*) 		calCount
	, 	sum(payment) 	totalCal
FROM 	cal 
WHERE 	fran_no = #{cal.franNo} 
GROUP 
	BY 	fran_name
	, 	fran_no
LIMIT	#{search.listSize}
	OFFSET #{search.startList}	

-----------------------	
	
본사가 보는 가맹점 매출현황
SELECT 	fran_no 
	, 	fran_name 
	, 	COUNT(*) 		calCount
	, 	sum(payment) 	totalCal
FROM 	cal 
GROUP 
	BY 	fran_name
	, 	fran_no
LIMIT	#{search.listSize}
	OFFSET #{search.startList}	
	
받은 정산 요청 내역
SELECT 	* 
FROM 	cal 
WHERE 	status = 'CalReq'
LIMIT	#{listSize}
	OFFSET #{startList}
	
