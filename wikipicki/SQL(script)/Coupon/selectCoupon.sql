������ȣ��ȸ - �������࿡ ���� ������ȣ ��������
SELECT 	* 
FROM 	coupon 
ORDER 
	BY 	coupon_no 
	DESC	LIMIT 1

��������Ʈ��ȸ
SELECT 	* 
FROM 	coupon 
LIMIT 	0
	, 	2

������ ����
SELECT 	* 
FROM 	coupon  

���������� 
SELECT 	* 
FROM 	coupon c
	, 	coupon_history ch 
WHERE 	c.coupon_no = ch.coupon_no 
	AND user_id = 'user7'

���������
SELECT	* 
FROM 	coupon c
	, 	coupon_history ch 
WHERE 	c.coupon_no = ch.coupon_no 
	AND user_id = 'user7' 
	AND use_date 
	IS 
		NOT NULL

����¡-���ѽ�ũ�ы�
SELECT 	* 
FROM 	coupon 
WHERE 	name = '��õ����' 
LIMIT 	3 
	OFFSET 1

����������ȸ
SELECT 	* 
FROM 	coupon_history 
WHERE 	user_id = 'user7' 
LIMIT 	0
	,	2

����¡
SELECT 	* 
FROM 	coupon_history 
WHERE 	user_id = 'user7' 
LIMIT 	3 
	OFFSET 1

