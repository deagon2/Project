package com.wikipicki.service.domain;

import java.sql.Date;

public class User {

	//F
	private String userId;
	private String type;
	private String status;
	private String userNo;
	private String nickName;
	private String userName;
	private String password;
	private Date regDate;
	private Date leaveDate;
	private String profileImg;
	private String phone;
	private String kakaoId;
	private int point;
	private String birthDate;
	private String comName;
	private String ceo;
	private String repPhone;
	private String snsCon;
	private String agreement;
	private String grade;
	private String gradeImg;
	private String marketInfo;
	
	//C
	public User() {
	}

	//M
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getLeaveDate() {
		return leaveDate;
	}

	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKakaoId() {
		return kakaoId;
	}

	public void setKakaoId(String kakaoId) {
		this.kakaoId = kakaoId;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getCeo() {
		return ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getRepPhone() {
		return repPhone;
	}

	public void setRepPhone(String repPhone) {
		this.repPhone = repPhone;
	}

	public String getSnsCon() {
		return snsCon;
	}

	public void setSnsCon(String snsCon) {
		this.snsCon = snsCon;
	}

	public String getAgreement() {
		return agreement;
	}

	public void setAgreement(String agreement) {
		this.agreement = agreement;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getGradeImg() {
		return gradeImg;
	}

	public void setGradeImg(String gradeImg) {
		this.gradeImg = gradeImg;
	}

	public String getMarketInfo() {
		return marketInfo;
	}

	public void setMarketInfo(String marketInfo) {
		this.marketInfo = marketInfo;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", type=" + type + ", status=" + status + ", userNo=" + userNo + ", nickName="
				+ nickName + ", userName=" + userName + ", password=" + password + ", regDate=" + regDate
				+ ", leaveDate=" + leaveDate + ", profileImg=" + profileImg + ", phone=" + phone + ", kakaoId="
				+ kakaoId + ", point=" + point + ", birthDate=" + birthDate + ", comName=" + comName + ", ceo=" + ceo
				+ ", repPhone=" + repPhone + ", snsCon=" + snsCon + ", agreement=" + agreement + ", grade=" + grade
				+ ", gradeImg=" + gradeImg + ", marketInfo=" + marketInfo + "]";
	}
	

	
	
}