package com.wikipicki.service.main;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.wikipicki.common.Search;
import com.wikipicki.service.domain.Comment;
import com.wikipicki.service.domain.FreeBoard;

@Mapper
public interface MainDAO {
///////////////////////////////////�����Խ���///////////////////////////////////////
	//�����Խ��� ����Ʈ��ȸ
		public List<FreeBoard> getFreeBoardList(Search search)throws Exception;
		
		//�����Խ��� �� �Խñ� Ȯ��
		public int getFreeBoardListAll(Search search)throws Exception;
		
		//�����Խ��� ����ȸ
		public FreeBoard getFreeBoard(int boardNo)throws Exception;
		
		//�����Խ��� �۵��
		public void addFreeBoard(FreeBoard freeBoard)throws Exception;
		
		//�����Խ��� �ۼ���
		public void updateFreeBoard(FreeBoard freeBoard)throws Exception;
		
		//�����Խ��� �ۻ���
		public void deleteFreeBoard(int boardNo)throws Exception;
		
		////�����Խ��� ��۰�����ȸ
		//public void getFreeBoardComment(int boardNo)throws Exception;
		
		//�����Խ��� ��ȸ���ø���
		public void updateHit(int boardNo)throws Exception;
		
		///////////////////////////////////���///////////////////////////////////////
		
		
		
		//��� ���
		public List<Comment> getCommentList(int boardNo)throws Exception;
		
		//��� ���
		public void addComment(Comment comment)throws Exception;
		
		//��� ����
		public void updateComment(Comment comment)throws Exception;
		
		//��� ����
		public void deleteComment(int commentNo)throws Exception;

}