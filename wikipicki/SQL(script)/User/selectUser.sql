<!-- ���̵�ã�� -->
SELECT 	user_id 
FROM 	user 
WHERE 	user_name = 'īī��' 
	AND birth = '1992-11-21' 
	AND phone = '01012345612'

<!-- ��й�ȣã�� -->
SELECT 	user_password 
FROM 	user 
WHERE 	user_id = 'user8' 
	AND phone = '01012345612'


<!-- ȸ���������� ��ĥ�� ����� -->

<!-- �����ڰ� �Ϲ�ȸ���������� -->
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

<!-- �����ڰ� ����ȸ���������� --> �ۼ���:�������̶� �����ϱ� ��
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
	

<!-- �Ϲ�ȸ�� ���������� -->
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

<!-- ����ȸ�� ���������� -->  �ۼ���:�������̶� �����ϱ� ��
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