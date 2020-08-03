-이벤트-

이벤트등록
INSERT 
INTO 	board(
				user_id
			, 	board_type
			, 	event_status
			, 	title
			, 	content
			, 	reg_date
			, 	hit
			, 	img_file
			, 	event_start_date
			, 	event_end_date
) VALUES(
				'user7'
			, 	'event'
			, 	'T'
			, 	'대곤이를 잡아라!'
			, 	'대곤이형을 잡으면 쿠폰 1000원권을 마구마구 줍니다!. 대곤이형을 잡아서 인증해주세요~'
			, 	default
			, 	default
			, 	NULL
			, 	'2020-07-16'
			, 	'2020-08-16'
)


-광고-
광고등록
INSERT 
INTO 	ad(
			user_id
		, 	ad_reg_date
		, 	free_charge_point
		, 	ad_time
		, 	ad_name
		, 	ad_file
		, 	ad_start_date
		, 	ad_end_date
		, 	ceo_name
		, 	ceo_phone
		, 	ceo_email
) VALUES(
			'admin'
		, 	default
		, 	2
		, 	20
		, 	'20초짜리영상'
		, 	'123456789112345678921234567893123456'
		, 	'2020-07-17'
		, 	'2020-07-27'
		, 	'시원스쿨'
		, 	'01012341698'
		, 	'siwon'
)

-광고시청내역-
광고시청
INSERT 
INTO 	ad_watch(
					user_id
				, 	ad_no
				, 	watch_state
				, 	ad_watch_date
				, 	ad_watch_time
) VALUES(
					'user7'
				, 	2
				, 	'T'
				, 	'2020-07-17'
				, 	'30'
)

