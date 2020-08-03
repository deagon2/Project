-이벤트-

이벤트수정
UPDATE 	board 
SET 	event_status = 'F'
	, 	title = '호롤로'
	, 	content = '호롤로로롤ㄹ로롤ㄹ롤'
	, 	img_file = '123456789112345678921234567893123456'
	, 	event_start_date = '2020-07-21'
	, 	event_end_date = '2020-08-30'
WHERE 	board_no = 3

-광고-


광고수정
UPDATE 	ad 
SET 	free_charge_point = 3
	, 	ad_time = 30
	, 	ad_name = '30초짜리영상'
	, 	ad_file ='654321398765432129876543211987654321'
	, 	ad_start_date = '2020-07-16'
	, 	ad_end_date = '2020-07-26'
	, 	ceo_name = '위처'
	, 	ceo_phone = '01098765432'
	, 	ceo_email = 'wicher' 
WHERE ad_no = 2