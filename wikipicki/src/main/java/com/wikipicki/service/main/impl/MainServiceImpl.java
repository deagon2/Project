package com.wikipicki.service.main.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;
import com.wikipicki.service.main.MainDAO;
import com.wikipicki.service.main.MainService;

@Service
public class MainServiceImpl implements MainService{
	
		@Resource
		private MainDAO mainDAO;
		
		public MainServiceImpl() {
		}
		
		@Autowired	
		public MainServiceImpl(MainDAO mainDAO) {
			this.mainDAO = mainDAO;
		}
		
		
///////////////////////////////////자유게시판///////////////////////////////////////
		
	public List<FreeBoard> getFreeBoardList (Search search) throws Exception {
		return mainDAO.getFreeBoardList(search);
	}
	
	public int getFreeBoardListAll(Search search)throws Exception{
		return mainDAO.getFreeBoardListAll(search);
	}
	
	@Override
	public FreeBoard getFreeBoard(int boardNo) throws Exception {
		mainDAO.updateHit(boardNo);
		return mainDAO.getFreeBoard(boardNo);
	}
	
	@Override
	public void addFreeBoard(FreeBoard freeBoard) throws Exception {
		mainDAO.addFreeBoard(freeBoard);
		
	}

	@Override
	public void updateFreeBoard(FreeBoard freeBoard) throws Exception {
		mainDAO.updateFreeBoard(freeBoard);	
		
	}

	@Override
	public void deleteFreeBoard(int boardNo) throws Exception {
		mainDAO.deleteFreeBoard(boardNo);
	}
	

	
	@Override
	public void updateHit(int boardNo) throws Exception {
		mainDAO.updateHit(boardNo);
	}

	
/////////////////////////////////댓글///////////////////////////////////////////////	
	
	
	@Override
	public void addComment(Comment comment) throws Exception {
		mainDAO.addComment(comment);
		
	}

	@Override
	public void updateComment(Comment comment) throws Exception {
		mainDAO.updateComment(comment);
	}

	@Override
	public void deleteComment(int commentNo) throws Exception {
		mainDAO.deleteComment(commentNo);
	}

	@Override
	public List<Comment> getCommentList(int boardNo) throws Exception {
		return mainDAO.getCommentList(boardNo);
	}

	
}
