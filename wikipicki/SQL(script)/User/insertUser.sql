
<!-- 일반회원가입 -->
INSERT 
INTO 	user(
				user_id
			, 	user_type
			, 	user_status
			, 	agreement
			, 	sns
			, 	grade
			, 	grade_img
			, 	nickname
			, 	user_name
			, 	user_password
			,   reg_date
			,   leave_date
			,   profile_img
			,   phone
			,   kakao_id
			,   current_point
			,   birth
			,   company
			, 	ceo
			, 	ceo_phone
) values( 		'user8'
			,   'U'
			,   'U'
			,   'T'
			,   'T'
			,   'iron'
			,   'iron.jpg'
			,   'lion'
			,   '카카오'
			,  	'zkzkDH!1'
			,  	"1998-12-31"
			,   null
			,   'aa.jpg'
			,   '01012345612'
			,   null
			,   0
			,  	"1992-11-21"
			,   null
			, 	null
			, 	null
)


<!--가맹회원가입-->
INSERT 
INTO 	user(
				user_id
			, 	user_type
			, 	user_status
			, 	agreement
			, 	sns
			,	grade
			, 	grade_img
			, 	nickname
			, 	user_name
			, 	user_password
			,   reg_date
			,   leave_date
			,   profile_img
			,   phone
			,   kakao_id
			,   current_point
			,   birth
			,   company
			, 	ceo
			, 	ceo_phone
) values( 
				'user6'
			,   'F'
			,	'U'
			,	'T'
			,	'T'
			,	null
			,	null
			,   'wuta'
			,   'wtkm'
			,   'RLAEORHS!@1' 
			,  	"1998-12-31"
			,   null
			,   'aa.jpg'
			,   '01012345612'
			,   null
			,   0
			,   "1992-11-21"
			,   'kamil'
			, 	'wtkm'
			, 	0319998888
)