<!-- �Ϲ�ȸ�� �������� -->
UPDATE 	user 
SET		grade = 'iron'
	, 	grade_img = 'iron.jpg'
	, 	user_status = 'T' 
WHERE 	user_id = 'user8';

<!-- ����ȸ�� �������� -->
UPDATE 	user 
SET 	user_status = 'T' 
WHERE 	user_id = 'user6'

<!-- �Ϲ�ȸ�� ���������� -->
UPDATE 	user 
SET 	nickname = 'naver'
	, 	user_password = 'kakaOOO12#'
	, 	sns = 'F'
	, 	agreement = 'F' 
WHERE 	user_id = 'user8'

<!-- ����ȸ�� ���������� -->
UPDATE 	user 
SET 	nickname = '��Ŭ����'
	, 	user_password = 'eclipse$4'
	, 	sns = 'T'
	, 	agreement = 'T'
	, 	ceo = '����'
	, 	ceo_phone = '01033334444'	
WHERE user_id = 'user6'

<!-- ��й�ȣ���� -->
UPDATE 	user 
SET		user_password = 'passWORD#4' 
WHERE 	user_id = 'user6'