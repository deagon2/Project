������ ��� ����Ʈ ��ȸ ����ȸ��

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	, 	fran.req_status
	, 	fran_img.fran_no 
FROM 	fran 
	LEFT JOIN	fran_img
	ON 	fran.fran_no = fran_img.fran_no
WHERE 	user_id = 'user7' 
	and req_status = 'f' 
LIMIT 0,100

������ ��� ����Ʈ ��ȸ ������

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	, 	fran.req_status
	, 	fran_img.fran_no 
FROM 	fran 
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no

������ ��� ����Ʈ ��ȸ

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	,	service_status
	,	fran_img.fran_no
FROM 	fran
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no 
WHERE 	user_id = 'user1' 
LIMIT 	0
	,	100

������ Ż�� ����Ʈ ��ȸ

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	,	service_status
	,	fran_img.fran_no
FROM 	fran
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no 
WHERE 	service_status = 'f'