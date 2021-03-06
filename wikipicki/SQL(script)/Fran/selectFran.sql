가맹점 등록 리스트 조회 가맹회원

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

가맹점 등록 리스트 조회 관리자

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	, 	fran.req_status
	, 	fran_img.fran_no 
FROM 	fran 
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no

가맹점 목록 리스트 조회

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

가맹점 탈퇴 리스트 조회

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	,	service_status
	,	fran_img.fran_no
FROM 	fran
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no 
WHERE 	service_status = 'f'