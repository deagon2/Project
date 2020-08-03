
°¡¸ÍÁ¡ ¼öÁ¤
UPDATE	fran 
SET 	fran_name = "MediPC¹æ"
	, 	fran_cost = '1000'
	, 	fran_address = "¼­¿ï °­³²±¸ Å×Çì¶õ·Î 108"
	, 	fran_total_seat = '150'
	, 	service_status = 't'
	, 	partner_name = "¼§¶¼"
WHERE 	fran_no = 1


°¡¸ÍÁ¡ Å»Åð

UPDATE 	fran 
SET 	service_status = 'f'
	, 	fran_leave_date = '2020-07-30'
	, 	leave_reason = '¾÷Á¾º¯°æ'
WHERE 	fran_no = '1' 