-�̺�Ʈ-

�̺�Ʈ���
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
			, 	'����̸� ��ƶ�!'
			, 	'��������� ������ ���� 1000������ �������� �ݴϴ�!. ��������� ��Ƽ� �������ּ���~'
			, 	default
			, 	default
			, 	NULL
			, 	'2020-07-16'
			, 	'2020-08-16'
)


-����-
������
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
		, 	'20��¥������'
		, 	'123456789112345678921234567893123456'
		, 	'2020-07-17'
		, 	'2020-07-27'
		, 	'�ÿ�����'
		, 	'01012341698'
		, 	'siwon'
)

-�����û����-
�����û
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

