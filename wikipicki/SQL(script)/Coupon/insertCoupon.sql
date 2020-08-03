
쿠폰등록 - 발행
INSERT 
INTO 	coupon(
				status
			, 	point
			, 	name
			, 	validity
			, 	img_file
) VALUES(
				'T'
			, 	1000
			, 	'천원권'
			, 	'2020-07-25'
			,	NULL
)

-발행내역
INSERT 
INTO 	coupon_history(
						user_id
					, 	coupon_no
					, 	reg_date
					, 	use_date
) VALUES(
						'user7'
					, 	'3'
					,  	default
					, 	NULL
)


