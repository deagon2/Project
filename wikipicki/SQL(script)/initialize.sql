
DROP TABLE ad_watch;
DROP TABLE ad;
DROP TABLE board;
DROP TABLE cal;
DROP TABLE comment;
DROP TABLE coupon;
DROP TABLE coupon_history;
DROP TABLE fran;
DROP TABLE fran_img;
DROP TABLE point;
DROP TABLE product;
DROP TABLE product_history;
DROP TABLE seat_no;
DROP TABLE user;

CREATE TABLE user( 
	user_id			VARCHAR(20)	NOT NULL UNIQUE,
	user_type 		CHAR(1)		NOT NULL,
	user_status		CHAR(1)		DEFAULT 'T',
	agreement 		CHAR(1)		NOT NULL,
	sns				CHAR(1)		DEFAULT 'F',
	grade			VARCHAR(10)	,
	grade_img		CHAR(36)	,
	nickname 		VARCHAR(20)	NOT NULL,
	user_name		VARCHAR(20)	NOT NULL,
	user_password	VARCHAR(60)	NOT NULL,
	reg_date		DATETIME		DEFAULT CURRENT_TIMESTAMP,
	leave_date		DATE 		,
	profile_img		CHAR(36)	NOT NULL,
	phone 			CHAR(11)	NOT NULL,
	kakao_id		CHAR(9)		,
	current_point	INT(4)		NOT NULL,
	birth			DATE		NOT NULL,
	company			VARCHAR(20)	,
	ceo				VARCHAR(20)	,
	ceo_phone		CHAR(11)	,
	PRIMARY KEY(user_id)
);


CREATE TABLE coupon( 
	coupon_no	INT(4) 		NOT NULL AUTO_INCREMENT,
	status 		CHAR(1)		NOT NULL,
	point		INT(4)		NOT NULL,
	name		VARCHAR(10)	NOT NULL,
	validity 	DATE		NOT NULL,
	img_file	CHAR(36)	,
	PRIMARY KEY(coupon_no)
);

CREATE TABLE coupon_history( 
	history_no		INT(4)		NOT NULL AUTO_INCREMENT,
	user_id			VARCHAR(20)	NOT NULL,
	coupon_no		INT(4)	 	NOT NULL,
	reg_date		DATETIME	DEFAULT CURRENT_TIMESTAMP,
	use_date		DATETIME	,
	PRIMARY KEY(history_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id),
	FOREIGN KEY (coupon_no) REFERENCES coupon(coupon_no)
);

CREATE TABLE ad( 
	ad_no				INT(4) 		NOT NULL AUTO_INCREMENT,
	user_id 			VARCHAR(20)	NOT NULL,
	ad_reg_date 		DATETIME	DEFAULT CURRENT_TIMESTAMP,
	free_charge_point	INT(4)		NOT NULL,
	ad_time				INT(4)		NOT NULL,
	ad_name				VARCHAR(30)	NOT NULL,
	ad_file				CHAR(36)	NOT NULL,
	ad_start_date		DATE		NOT NULL,
	ad_end_date			DATE		NOT NULL,
	ceo_name 			VARCHAR(20)	NOT NULL,
	ceo_phone			CHAR(11)	NOT NULL,
	ceo_email			VARCHAR(30)	NOT NULL,
	PRIMARY KEY(ad_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE ad_watch( 
	ad_watch_no		INT(4) 		NOT NULL AUTO_INCREMENT,
	user_id 		VARCHAR(20)	NOT NULL,
	ad_no 			INT(4)		NOT NULL,
	watch_state		CHAR(1)		NOT NULL,
	ad_watch_date 	DATE		NOT NULL,
	ad_watch_time	INT(4)		NOT NULL,
	PRIMARY KEY(ad_watch_no)	,
	FOREIGN KEY (user_id) REFERENCES user(user_id),
	FOREIGN KEY (ad_no) REFERENCES ad(ad_no)
);


CREATE TABLE board( 
	board_no			INT(4) 			NOT NULL AUTO_INCREMENT,
	user_id 			VARCHAR(20) 	NOT NULL,
	board_type			VARCHAR(6)		NOT NULL,
	event_status		CHAR(1)			,
	title 				VARCHAR(200)	NOT NULL,
	content	 			VARCHAR(3000)	NOT NULL,
	reg_date			DATETIME		DEFAULT CURRENT_TIMESTAMP,	
	hit					INT(4)			DEFAULT 0,
	file				CHAR(36)		,
	img_file			CHAR(36)		,
	event_start_date	DATE			,
	event_end_date		DATE			,
	answer_content		VARCHAR(3000)	,
	answer_date			DATE			,
	answer_file			CHAR(36)		,
	PRIMARY KEY (board_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE comment( 
	comment_no 	INT(4)			NOT NULL AUTO_INCREMENT,
	board_no 	INT(4)			NOT NULL,
	user_id	 	VARCHAR(20)		NOT NULL,
	parent_no	INT(4)			,
	reg_date	DATETIME		DEFAULT CURRENT_TIMESTAMP,			
	content	 	VARCHAR(600)	NOT NULL,
	PRIMARY KEY (comment_no),
	FOREIGN KEY (board_no) REFERENCES board(board_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id),
	FOREIGN KEY (parent_no) REFERENCES comment(comment_no)
);


CREATE TABLE fran( 
	fran_no			INT(4) 			NOT NULL AUTO_INCREMENT,
	com_reg_no 		CHAR(10)		NOT NULL UNIQUE,
	service_status 	CHAR(1)			DEFAULT 'T',
	user_id			VARCHAR(20)		NOT NULL,
	partner_name	VARCHAR(20)		NOT NULL,
	req_status 		VARCHAR(8)		DEFAULT 'ó����',
	leave_reason	VARCHAR(100)	,
	fran_total_seat	INT(4)			NOT NULL,
	fran_cost 		INT(4)			NOT NULL,
	fran_reg_date	DATETIME		DEFAULT CURRENT_TIMESTAMP,
	fran_name		VARCHAR(30)		NOT NULL,
	fran_address	VARCHAR(100)	NOT NULL,
	fran_leave_date	DATE			,
	cpu				VARCHAR(40)		NOT NULL,
	gpu 			VARCHAR(100)		NOT NULL,
	ram				VARCHAR(40)		NOT NULL,
	monitor			VARCHAR(40)		NOT NULL,
	keyboard		VARCHAR(40)		NOT NULL,
	mouse			VARCHAR(40)		NOT NULL,
	latitude		CHAR(9)			DEFAULT '0.000000',
	longitude		CHAR(10)		DEFAULT '0.000000',		
	PRIMARY KEY(fran_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id)	
);



CREATE TABLE seat_no( 
	fran_seat_reg_no	INT(4) 		NOT NULL AUTO_INCREMENT,
	fran_no 			INT(4)		NOT NULL,
	status				CHAR(1)		,
	seat_no				INT(4)		NOT NULL,
	PRIMARY KEY(fran_seat_reg_no),
	FOREIGN KEY (fran_no) REFERENCES fran(fran_no)
);


CREATE TABLE product( 
	product_no		INT(4) 		NOT NULL AUTO_INCREMENT,
	fran_no 		INT(4)		NOT NULL,
	product_name	VARCHAR(20)	NOT NULL,
	price			INT(4)		NOT NULL,
	total_amount	INT(4)		NOT NULL,
	product_img	CHAR(36)		,
	PRIMARY KEY(product_no),
	FOREIGN KEY (fran_no) REFERENCES fran(fran_no)
);


CREATE TABLE point( 
	tran_no				INT(4)		NOT NULL AUTO_INCREMENT,
	payment_type		VARCHAR(5)	,
	tran_type			VARCHAR(10) NOT NULL,
	user_id				VARCHAR(20)	NOT NULL,
	bank				VARCHAR(10)	,
	fran_no				INT(4)	 	,
	fran_seat_reg_no	INT(4)		,
	card_no				CHAR(16)	,
	phone				CHAR(11)	,
	point				INT(4)		NOT NULL,
	start_time			DATETIME	,
	end_time			DATETIME 	,
	current_point		INT(4)		NOT NULL,
	tran_date			DATETIME	DEFAULT CURRENT_TIMESTAMP,
	fran_name			VARCHAR(30)	,
	imp_uid				VARCHAR(30)	,
	merchant_uid		VARCHAR(30)	,
	PRIMARY KEY(tran_no),
	FOREIGN KEY (user_id) REFERENCES user(user_id),
	FOREIGN KEY (fran_no) REFERENCES fran(fran_no),
	FOREIGN KEY (fran_seat_reg_no) REFERENCES seat_no(fran_seat_reg_no)	
);


CREATE TABLE product_history( 
	history_no			INT(4)		NOT NULL AUTO_INCREMENT,
	product_no			INT(4)		NOT NULL,
	tran_no				INT(4)		NOT NULL,
	amount				INT(4)		NOT NULL,
	pur_product_name	VARCHAR(20)	NOT NULL,
	pur_price			INT(4)	 	NOT NULL,
	group_id			INT(4)		NOT NULL,
	tran_date			DATETIME	DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(history_no),
	FOREIGN KEY (product_no) REFERENCES product(product_no),
	FOREIGN KEY (tran_no) REFERENCES point(tran_no)
);


CREATE TABLE fran_img( 
	img_no		INT(4) 		NOT NULL AUTO_INCREMENT,
	fran_no 	INT(4)		NOT NULL,
	img_name	CHAR(36)	NOT NULL,
	PRIMARY KEY(img_no),
	FOREIGN KEY (fran_no) REFERENCES fran(fran_no)
);


CREATE TABLE cal( 
	cal_no				INT(4) 		NOT NULL AUTO_INCREMENT,
	status 				VARCHAR(11)	DEFAULT 'CalReq',
	fran_no				INT(4)		NOT NULL,
	pc_use_point		INT(4) 		NOT NULL,
	product_sell_point 	INT(4)		,
	fees				INT(4)		NOT NULL,
	last_cal_date		DATE 		,
	cal_req_date		DATETIME	DEFAULT CURRENT_TIMESTAMP,
	cal_date 			DATETIME	,
	payment				INT(4)		NOT NULL,
	fran_name			VARCHAR(30)	NOT NULL,
	PRIMARY KEY(cal_no),
	FOREIGN KEY (fran_no) REFERENCES fran(fran_no)
);


INSERT INTO user VALUES('user01', 'A', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�蹫��', '1', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user02', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�̹���', '2', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user03', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�ڹ���', '3', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user04', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '������', '4', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user05', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�ѹ���', '5', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user06', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '������', '6', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user07', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�蹫��', '7', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user08', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�չ���', '8', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);
INSERT INTO user VALUES('user09', 'U', 'T', 'T', 'F', 'IRON', 'iron.jpg', 'īī��', '�ֹ���', '9', "1998-12-31",  null , 'aa.jpg', '01012345612', null, 0, "1992-11-21", null, null, null);


INSERT INTO user VALUES('user11', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�谨��', '11', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user12', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�̰���', '12', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user13', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�ڰ���', '13', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user14', 'F', 'T', 'T', 'F', null, null, '��īĨ', '������', '14', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user15', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�Ѱ���', '15', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user16', 'F', 'T', 'T', 'F', null, null, '��īĨ', '������', '16', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user17', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�谨��', '17', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user18', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�հ���', '18', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');
INSERT INTO user VALUES('user19', 'F', 'T', 'T', 'F', null, null, '��īĨ', '�ְ���', '19', '1999-09-09', null, 'pg.jpg', '01088887777', null, 0, '2000-01-05', '������', '�谨��', '0254213657');


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1111111111,    'user11',      '���̸���PC��',        Default,        '���̸���'   ,    Default,        200 ,           1000,    CURDATE(),    '���� ������ �������4�� 29',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2222222222,    'user11',        '������ PC��',        Default,        '������'   ,    Default,            200 ,           900,     CURDATE(),      '����Ư���� ������ ����1�� 822-2',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             3333333333,    'user11',    '����PC CAFE ������',        Default,        '����'   ,    Default,    200 ,           1100,    CURDATE(),    '����Ư���� ������ ���ﵿ 819',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             4444444444,    'user11',       'ENATURE PC��',        Default,        'ENATURE'   ,    Default,        200 ,           1200,    CURDATE(),    '����Ư���� ������ ���ﵿ 817-9',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             5555555555,    'user11',      '���Ǵ�Ƽ �ǽ�',        Default,        '���Ǵ�Ƽ'   ,    Default,        200 ,           1100,    CURDATE(),    '����Ư���� ������ ����1�� �������100�� 14-10',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             6666666666,    'user12',          '�˽��˽�',        Default,            '�˽��˽�'   ,    Default,         200 ,           8000,    CURDATE(),    '����Ư���� ������ ���ﵿ 619-1',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             7777777777,    'user12',        '�����̳ʽ� ',        Default,        '�̳ʽ� '   ,    Default,         200 ,           1100,    CURDATE(),    '����Ư���� ���ʱ� ����4�� ���ʴ��77��',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             8888888888,    'user12',       '�׿��Ǿ���',        Default,           '�׿�'   ,    Default,         200 ,           1300,    CURDATE(),         '����Ư���� ������ ���ﵿ 636-22',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             9999999999,    'user12',        'W+PC��',        Default,          'W+'   ,    Default,         200 ,           1200,    CURDATE(),            '����Ư���� ������ ���ﵿ 643-12',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1010101010,    'user13',        '����PC��',        Default,        '����P'   ,    Default,         200 ,           1600,    CURDATE(),    '����Ư���� ������ ���ﵿ ���� ������ �� 825-20',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,       fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1212121212,    'user13',    '������ PC��',        Default,        '������'   ,    Default,         200 ,           900,    CURDATE(),    '����Ư���� ������ ���ﵿ �������4�� 29',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1313131313,    'user13',      'LION CITY PC',        Default,        'LION CITY'   ,    Default,         200 ,           1100,    CURDATE(),    '����Ư���� ������ ���ﵿ �������4�� 35',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1414141414,    'user13',        '��ĭPC��',        Default,        '��ĭ'   ,    Default,         200 ,           1200,    CURDATE(),    '����Ư���� ������ ���ﵿ 830-7',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1515151515,    'user13',       '���콺PC��',        Default,        '���콺'   ,    Default,         200 ,           1300,    CURDATE(),    '����Ư���� ���ʱ� ���ʵ� 1327-11',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1616161616,    'user13',      '���̼���PC',        Default,        '���̼���'   ,    Default,         200 ,           1100,    CURDATE(),    '����Ư���� ���ʱ� ���ʵ� 1330-11',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1717171717,    'user13',         '�Ǿ�����',        Default,        '�Ǿ�����'   ,    Default,         200 ,           1200,    CURDATE(),    '����Ư���� ������ ���ﵿ 672-37',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1818181818,    'user14',    '����̷� PC���',        Default,        ' PC���'   ,    Default,         200 ,           900,    CURDATE(),    '����Ư���� ������ ���ﵿ ������94�� 30',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             1919191919,    'user14',    'OZ 3pop PC��',        Default,        '������'   ,    Default,         200 ,           1100,    CURDATE(),     '����Ư���� ������ ������ ������� 478',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );


INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2020202020,    'user14',    '����PC��',        Default,         '���̺�'   ,    Default,         200 ,           1300,    CURDATE(),    '��⵵ �ϳ��� ��ǳ�� 687',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2121212121,    'user14',    '���̸���PC��2ȣ',        Default,        '���̸���'   ,    Default,         200 ,           1100,    CURDATE(),    '��⵵ �ϳ��� ���嵿 430-7',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2323232323,    'user14',    '���̴н� pc��',        Default,        '���̴н�'   ,    Default,         200 ,           1100,    CURDATE(),    '��⵵ �ϳ��� ������ 519-2',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2424242424,    'user14',    '����PC��',        Default,        '����'   ,    Default,         200 ,           900,    CURDATE(),    '��⵵ �ϳ��� ��ǳ�� 744-2',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2525252525,    'user14',    '���PC��',        Default,        '���'   ,    Default,         200 ,           1200,    CURDATE(),    '��⵵ �ϳ��� ��ǳ�� 342-32',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2626262626,    'user14',    '������PC��',        Default,        '���̸���'   ,    Default,         200 ,           1300,    CURDATE(),    '��⵵ �ϳ��� ��ǳ�� 394-1',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2727272727,    'user16',    '���ϳ�PC��',        Default,        '���ϳ�'   ,    Default,         200 ,           1100,    CURDATE(),    '��⵵�ϳ��� ��ǳ�� 309-215����',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2828282828,    'user16',    '�׿����Ͷ��̴�',        Default,        '���̸���'   ,    Default,         200 ,           1100,    CURDATE(),    '��⵵ �ϳ��� ���嵿 427-419',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             2929292929,    'user16',    '���÷���PC��',        Default,        '���̸���'   ,    Default,         200 ,           1000,    CURDATE(),    '��⵵ �ϳ��� ���嵿 427-53',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             3030303030,    'user16',    '����PC��',        Default,        '���̸���'   ,    Default,         200 ,           1100,    CURDATE(),    '�ϳ��� ��⵵ ���嵿 519����',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             3131313131,    'user16',    '���н��Ʒ���PC',        Default,        '���̸���'   ,    Default,         200 ,           1200,    CURDATE(),    '�ϳ��� ��⵵ ���嵿 519-2����',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );

INSERT INTO fran ( com_reg_no,     user_id,      fran_name,       service_status,   partner_name, req_status,  fran_total_seat, fran_cost, fran_reg_date,             fran_address,               fran_leave_date,           cpu,                                        gpu,                                                     ram,                       monitor,                         keyboard,                       mouse  )
VALUES(             3232323232,    'user16',    '�帲��PC��',        Default,        '���̸���'   ,    Default,         200 ,           1300,    CURDATE(),    '��⵵ �ϳ��� ���嵿 519-4',         CURDATE(),        '���� �ھ�i9-10���� 10900K (�ڸ䷹��ũS)',   '�̿��������� RTX 2080 Ti BLACK EDITION V2 OC D6 11GB',       '64g' ,    '�Ｚ���� Odyssey G9 C49G95T'  ,      '������ MX KEYS' ,       '������ MX MASTER 3'        );





INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 6000, 1100, '2020-07-01', 11000, '���̸���PC��', '2020-07-02 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 6000, 1200, '2020-07-03', 12000, '���̸���PC��', '2020-07-04 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 7000, 1400, '2020-07-05', 14000, '���̸���PC��', '2020-07-06 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 8000, 8000, 1600, '2020-07-07', 16000, '���̸���PC��', '2020-07-08 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 7000, 1300, '2020-07-09', 13000, '���̸���PC��', '2020-07-10 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 8000, 1300, '2020-07-11', 13000, '���̸���PC��', '2020-07-12 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 4000, 7000, 1100, '2020-07-15', 11000, '���̸���PC��', '2020-07-16 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 6000, 1100, '2020-07-18', 11000, '���̸���PC��', '2020-07-19 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 6000, 1200, '2020-07-21', 12000, '���̸���PC��', '2020-07-22 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 5000, 1200, '2020-07-22', 12000, '���̸���PC��', '2020-07-23 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 8000, 8000, 1600, '2020-07-24', 16000, '���̸���PC��', '2020-07-25 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 4000, 1100, '2020-07-27', 11000, '���̸���PC��', '2020-07-28 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 4000, 1000, '2020-07-28', 10000, '���̸���PC��', '2020-07-29 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 8000, 1300, '2020-07-29', 13000, '���̸���PC��', '2020-07-30 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 4000, 8000, 1200, '2020-07-30', 12000, '���̸���PC��', '2020-07-31 14:30:23');

INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 5000, 6000, 1100, '2020-07-01', 11000, '������ PC��', '2020-07-02 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 6000, 6000, 1200, '2020-07-03', 12000, '������ PC��', '2020-07-04 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 7000, 7000, 1400, '2020-07-05', 14000, '������ PC��', '2020-07-06 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 8000, 8000, 1600, '2020-07-07', 16000, '������ PC��', '2020-07-08 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 6000, 7000, 1300, '2020-07-09', 13000, '������ PC��', '2020-07-10 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 5000, 8000, 1300, '2020-07-11', 13000, '������ PC��', '2020-07-12 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 4000, 7000, 1100, '2020-07-15', 11000, '������ PC��', '2020-07-16 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 5000, 6000, 1100, '2020-07-18', 11000, '������ PC��', '2020-07-19 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 6000, 6000, 1200, '2020-07-21', 12000, '������ PC��', '2020-07-22 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 7000, 5000, 1200, '2020-07-22', 12000, '������ PC��', '2020-07-23 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 8000, 8000, 1600, '2020-07-24', 16000, '������ PC��', '2020-07-25 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 7000, 4000, 1100, '2020-07-27', 11000, '������ PC��', '2020-07-28 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 6000, 4000, 1000, '2020-07-28', 10000, '������ PC��', '2020-07-29 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 5000, 8000, 1300, '2020-07-29', 13000, '������ PC��', '2020-07-30 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete', 4000, 8000, 1200, '2020-07-30', 12000, '������ PC��', '2020-07-31 14:30:23');

INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 4000, 8000, 1200, '2020-08-01', 12000, '���̸���PC��', '2020-08-02 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 4000, 8000, 1200, '2020-08-03', 12000, '���̸���PC��', '2020-08-04 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 4000, 1000, '2020-08-04', 10000, '���̸���PC��', '2020-08-05 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 4000, 1100, '2020-08-05', 11000, '���̸���PC��', '2020-08-06 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 8000, 8000, 1600, '2020-08-07', 16000, '���̸���PC��', '2020-08-08 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 5000, 1200, '2020-08-08', 12000, '���̸���PC��', '2020-08-09 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 6000, 1200, '2020-08-10', 12000, '���̸���PC��', '2020-08-11 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 6000, 1100, '2020-08-13', 11000, '���̸���PC��', '2020-08-14 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 4000, 7000, 1100, '2020-08-14', 11000, '���̸���PC��', '2020-08-15 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 8000, 1300, '2020-08-16', 13000, '���̸���PC��', '2020-08-17 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 7000, 1300, '2020-08-19', 13000, '���̸���PC��', '2020-08-20 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 8000, 8000, 1600, '2020-08-21', 16000, '���̸���PC��', '2020-08-22 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 7000, 7000, 1400, '2020-08-23', 14000, '���̸���PC��', '2020-08-24 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 6000, 6000, 1200, '2020-08-24', 12000, '���̸���PC��', '2020-08-25 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(1, 'CalComplete', 5000, 6000, 1100, '2020-08-26', 11000, '���̸���PC��', '2020-08-27 14:30:23');

INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 3000, 7000, 1000, '2020-08-01', 10000, '������ PC��', '2020-09-02 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 5000, 6000, 1100, '2020-08-03', 11000, '������ PC��', '2020-09-04 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 3000, 3000, 600, '2020-08-04', 6000, '������ PC��', '2020-09-05 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 4000, 3000, 700, '2020-08-05', 7000, '������ PC��', '2020-09-06 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 5000, 7000, 1200, '2020-08-07', 12000, '������ PC��', '2020-09-08 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 2000, 3000, 500, '2020-08-08', 5000, '������ PC��', '2020-09-09 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 3000, 7000, 1000, '2020-08-10', 10000, '������ PC��', '2020-09-11 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 3000, 3000, 600, '2020-08-13', 6000, '������ PC��', '2020-09-14 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 4000, 4000, 800, '2020-08-14', 8000, '������ PC��', '2020-09-15 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 6000, 5000, 1100, '2020-08-16', 11000, '������ PC��', '2020-09-17 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 4000, 8000, 1200, '2020-08-19', 12000, '������ PC��', '2020-09-20 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 5000, 8000, 1300, '2020-08-21', 13000, '������ PC��', '2020-09-22 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 7000, 7000, 1400, '2020-08-23', 14000, '������ PC��', '2020-09-24 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 4000, 4000, 800, '2020-08-24', 8000, '������ PC��', '2020-09-25 14:30:23');
INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 5000, 6000, 1100, '2020-08-26', 11000, '������ PC��', '2020-09-27 14:30:23');

INSERT INTO cal(fran_no, status, pc_use_point, product_sell_point, fees, last_cal_date, payment, fran_name, cal_date) VALUE(2, 'CalComplete',5000, 6000, 1100, '2020-08-26', 11000, '������ PC��', '2020-09-27 14:30:23');