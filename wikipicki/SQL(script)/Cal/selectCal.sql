
�������ȸ
SELECT	*
FROM	cal
WHERE 	cal_no=13

-----------------------

���� ����Ʈ
SELECT	*
FROM	cal
WHERE	fran_no = #{cal.franNo}
LIMIT	#{search.listSize}
	OFFSET #{search.startList}

-----------------------

������ ������Ȳ
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
	
���簡 ���� ������ ������Ȳ
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
	
���� ���� ��û ����
SELECT 	* 
FROM 	cal 
WHERE 	status = 'CalReq'
LIMIT	#{listSize}
	OFFSET #{startList}
	
