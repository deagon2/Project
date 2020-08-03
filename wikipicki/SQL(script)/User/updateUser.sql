<!-- 일반회원 정보수정 -->
UPDATE 	user 
SET		grade = 'iron'
	, 	grade_img = 'iron.jpg'
	, 	user_status = 'T' 
WHERE 	user_id = 'user8';

<!-- 가맹회원 정보수정 -->
UPDATE 	user 
SET 	user_status = 'T' 
WHERE 	user_id = 'user6'

<!-- 일반회원 내정보수정 -->
UPDATE 	user 
SET 	nickname = 'naver'
	, 	user_password = 'kakaOOO12#'
	, 	sns = 'F'
	, 	agreement = 'F' 
WHERE 	user_id = 'user8'

<!-- 가맹회원 내정보수정 -->
UPDATE 	user 
SET 	nickname = '이클립스'
	, 	user_password = 'eclipse$4'
	, 	sns = 'T'
	, 	agreement = 'T'
	, 	ceo = '사장'
	, 	ceo_phone = '01033334444'	
WHERE user_id = 'user6'

<!-- 비밀번호변경 -->
UPDATE 	user 
SET		user_password = 'passWORD#4' 
WHERE 	user_id = 'user6'