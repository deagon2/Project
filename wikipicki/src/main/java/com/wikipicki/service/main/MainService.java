
package com.wikipicki.service.main;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;

@Service
public interface MainService {
	
	
	///////////////////////////////////자유게시판///////////////////////////////////////
		
	//자유게시판 리스트조회
	public List<FreeBoard> getFreeBoardList(Search search)throws Exception;
	
	//자유게시판 총 게시글 확인
	public int getFreeBoardListAll(Search search)throws Exception;
	
	//자유게시판 상세조회
	public FreeBoard getFreeBoard(int boardNo)throws Exception;
	
	//자유게시판 글등록
	public void addFreeBoard(FreeBoard freeBoard)throws Exception;
	
	//자유게시판 글수정
	public void updateFreeBoard(FreeBoard freeBoard)throws Exception;
	
	//자유게시판 글삭제
	public void deleteFreeBoard(int boardNo)throws Exception;
	
	////자유게시판 댓글갯수조회
	//public void getFreeBoardComment(int boardNo)throws Exception;
	
	//자유게시판 조회수올리기
	public void updateHit(int boardNo)throws Exception;
	
	///////////////////////////////////댓글///////////////////////////////////////
	
	
	
	//댓글 목록
	public List<Comment> getCommentList(int boardNo)throws Exception;
	
	//댓글 등록
	public void addComment(Comment comment)throws Exception;
	
	//댓글 수정
	public void updateComment(Comment comment)throws Exception;
	
	//댓글 삭제
	public void deleteComment(int commentNo)throws Exception;

}