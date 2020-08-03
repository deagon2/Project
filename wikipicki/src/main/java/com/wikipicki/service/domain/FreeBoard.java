
package com.wikipicki.service.domain;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class FreeBoard implements Serializable{
	
	private User userImg;  //유저프로필사진
	private User writer;   //유저닉네임
	private int boardNo;   	//게시글번호
	private String userId; 	//작성자아이디
	private String title;   //제목
	private String content; //내용
	 @JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-mm-dd hh:mm:ss")
	private Date regDate;  	//작성일
	private int hit;		//조회수
	private int recnt;		//총조회수
	private String file;	//첨부파일
	private	String imgFile;	//이미지파일
	
	public FreeBoard() {	
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "FreeBoard [boardNo=" + boardNo + ", userId=" + userId + ", title=" + title + ", content=" + content
				+ ", regDate=" + regDate + ", hit=" + hit + ", recnt=" + recnt + ", file=" + file + ", imgFile="
				+ imgFile + ", getBoardNo()=" + getBoardNo() + ", getUserId()=" + getUserId() + ", getTitle()="
				+ getTitle() + ", getContent()=" + getContent() + ", getRegDate()=" + getRegDate() + ", getHit()="
				+ getHit() + ", getRecnt()=" + getRecnt() + ", getFile()=" + getFile() + ", getImgFile()="
				+ getImgFile() + "]";
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
	
	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getRecnt() {
		return recnt;
	}

	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}


}
