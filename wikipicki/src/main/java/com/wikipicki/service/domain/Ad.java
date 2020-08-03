package com.wikipicki.service.domain;

import java.io.Serializable;
import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Ad implements Serializable{

	public Ad() {
	}

	private int adNo;
	private String userId;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date adAddDate;
	private int adPoint;
	private int adPlaytime;
	private String adName;
	private String adFile;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date adStartDate;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date adEndDate;
	private String adClient;
	private String adClientPhone;
	private String adClientEmail;
	private String adWatchCheck;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date adWatchDate;
	private int adWatchTime;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getAdAddDate() {
		return adAddDate;
	}
	public void setAdAddDate(Date adAddDate) {
		this.adAddDate = adAddDate;
	}
	public int getAdNo() {
		return adNo;
	}
	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}
	public int getAdPoint() {
		return adPoint;
	}
	public void setAdPoint(int adPoint) {
		this.adPoint = adPoint;
	}
	public String getAdClient() {
		return adClient;
	}
	public void setAdClient(String adClient) {
		this.adClient = adClient;
	}
	public String getAdClientPhone() {
		return adClientPhone;
	}
	public void setAdClientPhone(String adClientPhone) {
		this.adClientPhone = adClientPhone;
	}
	public String getAdClientEmail() {
		return adClientEmail;
	}
	public void setAdClientEmail(String adClientEmail) {
		this.adClientEmail = adClientEmail;
	}
	public Date getAdStartDate() {
		return adStartDate;
	}
	public void setAdStartDate(Date adStartDate) {
		this.adStartDate = adStartDate;
	}
	public Date getAdEndDate() {
		return adEndDate;
	}
	public void setAdEndDate(Date adEndDate) {
		this.adEndDate = adEndDate;
	}
	public int getAdPlaytime() {
		return adPlaytime;
	}
	public void setAdPlaytime(int adPlaytime) {
		this.adPlaytime = adPlaytime;
	}
	public String getAdName() {
		return adName;
	}
	public void setAdName(String adName) {
		this.adName = adName;
	}
	public String getAdFile() {
		return adFile;
	}
	public void setAdFile(String adFile) {
		this.adFile = adFile;
	}
	public Date getAdWatchDate() {
		return adWatchDate;
	}
	public void setAdWatchDate(Date adWatchDate) {
		this.adWatchDate = adWatchDate;
	}
	public String getAdWatchCheck() {
		return adWatchCheck;
	}
	public void setAdWatchCheck(String adWatchCheck) {
		this.adWatchCheck = adWatchCheck;
	}
	public int getAdWatchTime() {
		return adWatchTime;
	}
	public void setAdWatchTime(int adWatchTime) {
		this.adWatchTime = adWatchTime;
	}
	
	@Override
	public String toString() {
		return "Ad [userId=" + userId + ", adAddDate=" + adAddDate + ", adNo=" + adNo + ", adPoint=" + adPoint
				+ ", adClient=" + adClient + ", adClientPhone=" + adClientPhone + ", adClientEmail=" + adClientEmail
				+ ", adStartDate=" + adStartDate + ", adEndDate=" + adEndDate + ", adPlaytime=" + adPlaytime
				+ ", adName=" + adName + ", adFile=" + adFile + ", adWatchDate=" + adWatchDate + ", adWatchCheck="
				+ adWatchCheck + ", adWatchTime=" + adWatchTime + "]";
	}
	
}
