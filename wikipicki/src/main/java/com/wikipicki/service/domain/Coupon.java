package com.wikipicki.service.domain;

import java.io.Serializable;
import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Coupon implements Serializable{
	
	public Coupon() {
		
	}
	
	private int couponNo;
	private String couponStatus;
	private int couponPoint;
	private String couponName;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date effectiveDate;
	private String imgFile;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date giveDate;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date useDate;
	private String userId; 
	private int giveCount;
	private int useCount;
	
	
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public Date getEffectiveDate() {
		return effectiveDate;
	}
	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}
	public int getCouponPoint() {
		return couponPoint;
	}
	public void setCouponPoint(int couponPoint) {
		this.couponPoint = couponPoint;
	}
	public String getCouponStatus() {
		return couponStatus;
	}
	public void setCouponStatus(String couponStatus) {
		this.couponStatus = couponStatus;
	}
	public int getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}
	public int getGiveCount() {
		return giveCount;
	}
	public void setGiveCount(int giveCount) {
		this.giveCount = giveCount;
	}
	public int getUseCount() {
		return useCount;
	}
	public void setUseCount(int useCount) {
		this.useCount = useCount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getGiveDate() {
		return giveDate;
	}
	public void setGiveDate(Date giveDate) {
		this.giveDate = giveDate;
	}
	public Date getUseDate() {
		return useDate;
	}
	public void setUseDate(Date useDate) {
		this.useDate = useDate;
	}
	public String getImgFile() {
		return imgFile;
	}
	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}
	
	@Override
	public String toString() {
		return "Coupon [couponName=" + couponName + ", effectiveDate=" + effectiveDate + ", couponPoint=" + couponPoint
				+ ", couponStatus=" + couponStatus + ", couponNumber=" + couponNo + ", giveCount=" + giveCount
				+ ", useCount=" + useCount + ", userId=" + userId + ", giveDate=" + giveDate + ", useDate=" + useDate
				+ ", imgFile=" + imgFile + "]";
	}
	
	
}