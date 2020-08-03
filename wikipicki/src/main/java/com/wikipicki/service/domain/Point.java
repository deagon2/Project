package com.wikipicki.service.domain;

import java.io.Serializable;

public class Point implements Serializable{
	
	private int tranNo;
	private String userId;
	private int franNo;
	private int franSeatRegNo;
	private String tranType;
	private String paymentType;
	private String bank;
	private int cardNo;
	private String phone;
	private int point;
	private String startTime;
	private String endTime;
	private int currentPoint;
	private String tranDate;
	private String franName;
	private String impUid;
	private String merchantUid;
	
	public int getTranNo() {
		return tranNo;
	}
	public void setTranNo(int tranNo) {
		this.tranNo = tranNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getFranNo() {
		return franNo;
	}
	public void setFranNo(int franNo) {
		this.franNo = franNo;
	}
	public int getFranSeatRegNo() {
		return franSeatRegNo;
	}
	public void setFranSeatRegNo(int franSeatRegNo) {
		this.franSeatRegNo = franSeatRegNo;
	}
	public String getTranType() {
		return tranType;
	}
	public void setTranType(String tranType) {
		this.tranType = tranType;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getCurrentPoint() {
		return currentPoint;
	}
	public void setCurrentPoint(int currentPoint) {
		this.currentPoint = currentPoint;
	}
	public String getTranDate() {
		return tranDate;
	}
	public void setTranDate(String tranDate) {
		this.tranDate = tranDate;
	}
	public String getFranName() {
		return franName;
	}
	public void setFranName(String franName) {
		this.franName = franName;
	}
	public String getImpUid() {
		return impUid;
	}
	public void setImpUid(String impUid) {
		this.impUid = impUid;
	}
	public String getMerchantUid() {
		return merchantUid;
	}
	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}
	
	@Override
	public String toString() {
		return "Point [tranNo=" + tranNo + ", userId=" + userId + ", franNo=" + franNo + ", franSeatRegNo="
				+ franSeatRegNo + ", tranType=" + tranType + ", paymentType=" + paymentType + ", bank=" + bank
				+ ", cardNo=" + cardNo + ", phone=" + phone + ", point=" + point + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", currentPoint=" + currentPoint + ", tranDate=" + tranDate + ", franName="
				+ franName + ", impUid=" + impUid + ", merchantUid=" + merchantUid + "]";
	}
}