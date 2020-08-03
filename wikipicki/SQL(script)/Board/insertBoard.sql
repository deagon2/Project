 
-자유게시판-         
          
자유게시판 글등록
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
			,	'안녕하세요'
			,	'ㅈㄱㄴ'
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


- 댓글 -

자유게시판 댓글 작성
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
				,  	'안녕하세요'
)
------------------------------------


자유게시판 대댓글 등록
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
				, 	'안녕하세요'
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
				,	'방가방가'
)


