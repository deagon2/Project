package com.mvc.wikipicki.services.mains.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import javax.websocket.PongMessage;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wikipicki.common.Pagination;
import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.domain.Point;
import com.wikipicki.service.domain.Program;
import com.wikipicki.service.main.MainDAO;
import com.wikipicki.service.program.ProgramDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:config/common-context.xml",
		"classpath:config/mybatis-context.xml",
		"classpath:config/transaction-context.xml",
		"classpath:mappers/main-mapper.xml",
		"classpath:mappers/point-mapper.xml",
		"classpath:mappers/program-mapper.xml"
		})

public class MainServiceTest {

	private static final Logger logger = LoggerFactory.getLogger(MainServiceTest.class);
	
	@Autowired
	private MainDAO mainDAO;
	private ProgramDAO programDAO;
	
	@Test
	public void testAddFreeBoard() throws Exception {
		for(int i = 10 ; i < 100 ; i++) {
		FreeBoard freeBoard = new FreeBoard();
		freeBoard.setUserId("user02");
		freeBoard.setTitle("Insert Test Title");
		freeBoard.setContent("Insert Test Content");
		freeBoard.setFile("");
		freeBoard.setImgFile("");
		mainDAO.addFreeBoard(freeBoard);
		}
	}	


	@Ignore
	public void testgetFreeBoard() throws Exception {
		mainDAO.getFreeBoard(13);
	}
	
	@Ignore
	 public void testUpdateFreeBoard() throws Exception{
		 FreeBoard freeBoard = new FreeBoard();
		 freeBoard.setBoardNo(13);
		 freeBoard.setContent("占쏙옙占쎈변占쏙옙占쌩쏙옙占싹댐옙.");
		 freeBoard.setTitle("占쏙옙占쏟변곤옙占쌩쏙옙占싹댐옙.");
		 freeBoard.setFile("dddd.jpg");
		 freeBoard.setImgFile("img.jpg");
		 mainDAO.updateFreeBoard(freeBoard);
	}
	
	
//	@Ignore
//	public void testgetFreeBoardList() throws Exception{
//		Search search = new Search();
//		Map<String, Object> map = new HashMap<String, Object>();
//		search.pageInfo(1, 10);
//		search.setKeyword("user7");
//		search.setSearchType("user_id");
//		
//		map.put("search", search);
//		
//		mainDAO.getFreeBoardList(map);
//	}
	
	@Ignore
	public void testDeleteFreeBoard() throws Exception{
		mainDAO.deleteFreeBoard(12);
	}
	
	
//	@Test 占쏙옙占쏙옙트 占쏙옙占쌀띰옙 占쏙옙占쏙옙 占쏙옙占쌔울옙占쏙옙占쏙옙占�.
//	public void testgetFreeBoardComment() throws Exception{
//		FreeBoard freeBoard = new FreeBoard();
//		mainDAO.getFreeBoardComment(5);
//	}
//	
	
	@Ignore
	public void testUpdateHit() throws Exception{
		mainDAO.updateHit(3);
	}
	
//==============================占쏙옙占�=================================
	
	@Ignore
	public void testAddComment() throws Exception {
		for(int i = 0 ; i < 20 ; i++) {
		Comment comment = new Comment();
		comment.setBoardNo(31);
		comment.setUserId("user71");
		comment.setContent("�뙎湲�");
		mainDAO.addComment(comment);
		}
	}
	
	
	@Ignore
	public void testUpdateComment() throws Exception{
		Comment comment = new Comment();
		comment.setCommentNo(341);
		comment.setBoardNo(5);
		comment.setUserId("user71");
		comment.setContent("占쏙옙舫占쏙옙占쏙옙颯占쏙옙求占�..");
		mainDAO.updateComment(comment);
	}
	
	@Ignore
	public void testDeleteComment() throws Exception{
		mainDAO.deleteComment(12);
	}
	
	@Ignore
	public void testGetCommentList() throws Exception{
		mainDAO.getCommentList(3);
	}
	
	
}

