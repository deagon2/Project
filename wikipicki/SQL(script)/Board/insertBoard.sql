 
-�����Խ���-         
          
�����Խ��� �۵��
------------------------------------
insert 
into 	board( 
				user_id
			, 	board_type
			, 	event_status
			,   title
			,	content
			,   reg_date
			,   hit
			,   file
			,   img_file
			, 	event_start_date
			, 	event_end_date
			, 	answer_content
			, 	answer_date
			, 	answer_file
) values( 
				'user7'
			,	'FREE'
			,	null
			,	'�ȳ��ϼ���'
			,	'������'
			,	CURRENT_TIMESTAMP
			,	default
			,	null
			,	null
			,	null
			,	null
			,	null
			,	null
			,	null
)    
------------------------------------


- ��� -

�����Խ��� ��� �ۼ�
------------------------------------
INSERT 
INTO	COMMENT( 
					board_no
				,  	user_id
				,	reg_date
				,	content
) VALUES(        	
					'3'
				,	'user7'
				,   CURRENT_TIMESTAMP
				,  	'�ȳ��ϼ���'
)
------------------------------------


�����Խ��� ���� ���
------------------------------------
INSERT 
INTO	COMMENT( 
					board_no
				, 	comment_no
				, 	parent_no
				,  	user_id
				,   reg_date
				,   content
) VALUES(    
					'3'
				,	'2'
				,	'A1'
				,	'user7'
				,   CURRENT_TIMESTAMP
				, 	'�ȳ��ϼ���'
)
------------------------------------
INSERT 
INTO	COMMENT( 
					board_no
				, 	comment_no
				,   user_id
				,	parent_no
				,	reg_date
				,	content
) VALUES (    
					'3'
				,	'2'
				,	'user7'
				,	'1'
				,	CURRENT_TIMESTAMP
				,	'�氡�氡'
)


