package com.wikipicki.service.domain;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Comment implements Serializable {

		private int commentNo;  //��۹�ȣ
	    private int boardNo;    //�۹�ȣ
	    private int parentNo;   //�θ��۹�ȣ
	    private String userId;  //��� �ۼ���
	    private String content;  //��� ����
	    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-mm-dd hh:mm:ss")
	    private Date regDate;   //��� �ۼ�����
	    private User writer;   //�����г���
	    private User userImg;  //���������ʻ���
		
	    
		public Comment() {
			super();
			// TODO Auto-generated constructor stub
		}

		
		@Override
		public String toString() {
			return "Comment [commentNo=" + commentNo + ", boardNo=" + boardNo + ", parentNo=" + parentNo + ", userId="
					+ userId + ", content=" + content + ", regDate=" + regDate + ", getCommentNo()=" + getCommentNo()
					+ ", getBoardNo()=" + getBoardNo() + ", getParentNo()=" + getParentNo() + ", getUserId()="
					+ getUserId() + ", getContent()=" + getContent() + ", getRegDate()=" + getRegDate() + "]";
		}

		public int getCommentNo() {
			return commentNo;
		}


		public void setCommentNo(int commentNo) {
			this.commentNo = commentNo;
		}



		public int getBoardNo() {
			return boardNo;
		}


		public void setBoardNo(int boardNo) {
			this.boardNo = boardNo;
		}


		public int getParentNo() {
			return parentNo;
		}


		public void setParentNo(int parentNo) {
			this.parentNo = parentNo;
		}


		public String getUserId() {
			return userId;
		}


		public void setUserId(String userId) {
			this.userId = userId;
		}


		public String getContent() {
			return content;
		}


		public void setContent(String content) {
			this.content = content;
		}


		public Date getRegDate() {
			return regDate;
		}


		public void setRegDate(Date regDate) {
			this.regDate = regDate;
		}


		public User getWriter() {
			return writer;
		}


		public void setWriter(User writer) {
			this.writer = writer;
		}


		public User getUserImg() {
			return userImg;
		}


		public void setUserImg(User userImg) {
			this.userImg = userImg;
		}

		
	}
