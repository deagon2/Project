<!-- 아이디찾기 -->
SELECT 	user_id 
FROM 	user 
WHERE 	user_name = '카카오' 
	AND birth = '1992-11-21' 
	AND phone = '01012345612'

<!-- 비밀번호찾기 -->
SELECT 	user_password 
FROM 	user 
WHERE 	user_id = 'user8' 
	AND phone = '01012345612'


<!-- 회원정보보기 합칠지 고민중 -->

<!-- 관리자가 일반회원정보보기 -->
SELECT 	profile_img
	, 	grade
	, 	grade_img
	, 	user_id
	, 	nickname
	, 	user_name
	, 	birth
	, 	phone
	, 	current_point
	, 	sns
	, 	reg_date
	, 	leave_date
	, 	agreement
	, 	user_status 
FROM 	user

<!-- 관리자가 가맹회원정보보기 --> 작성중:가맹점이랑 조인하기 전
SELECT 	profile_img
	, 	user_id
	, 	nickname
	, 	user_name
	, 	birth
	, 	phone
	, 	company
	, 	ceo
	, 	ceo_phone
	, 	sns
	, 	reg_date
	, 	leave_date
	, 	agreement
	, 	user_status 
FROM 	user u
	, 	fran f
	

<!-- 일반회원 내정보보기 -->
SELECT 	profile_img
	, 	grade
	, 	grade_img
	, 	user_id
	, 	nickname
	, 	user_name
	, 	birth
	, 	phone
	, 	current_point
	, 	sns
	, 	reg_date
	, 	agreement 
FROM user;

<!-- 가맹회원 내정보보기 -->  작성중:가맹점이랑 조인하기 전
SELECT 	profile_img
	, 	grade
	, 	grade_img
	, 	user_id
	, 	nickname
	, 	user_name
	, 	birth
	, 	phone
	, 	current_point
	, 	sns
	, 	reg_date
	, 	agreement 
FROM 	user;