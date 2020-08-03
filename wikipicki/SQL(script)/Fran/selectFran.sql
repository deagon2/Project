°¡¸ÍÁ¡ µî·Ï ¸®½ºÆ® Á¶È¸ °¡¸ÍÈ¸¿ø

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

°¡¸ÍÁ¡ µî·Ï ¸®½ºÆ® Á¶È¸ °ü¸®ÀÚ

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	, 	fran.req_status
	, 	fran_img.fran_no 
FROM 	fran 
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no

°¡¸ÍÁ¡ ¸ñ·Ï ¸®½ºÆ® Á¶È¸

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

°¡¸ÍÁ¡ Å»Åð ¸®½ºÆ® Á¶È¸

SELECT 	fran.fran_no
	, 	fran.fran_name
	, 	fran.fran_reg_date
	,	service_status
	,	fran_img.fran_no
FROM 	fran
	INNER JOIN fran_img
	ON 	fran.fran_no = fran_img.fran_no 
WHERE 	service_status = 'f'