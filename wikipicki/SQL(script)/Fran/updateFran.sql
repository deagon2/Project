
������ ����
UPDATE	fran 
SET 	fran_name = "MediPC��"
	, 	fran_cost = '1000'
	, 	fran_address = "���� ������ ������� 108"
	, 	fran_total_seat = '150'
	, 	service_status = 't'
	, 	partner_name = "����"
WHERE 	fran_no = 1


������ Ż��

UPDATE 	fran 
SET 	service_status = 'f'
	, 	fran_leave_date = '2020-07-30'
	, 	leave_reason = '��������'
WHERE 	fran_no = '1' 