package com.wikipicki.service.domain;

import java.io.Serializable;

public class Cal implements Serializable{
	
	private String userId;			
	private String status;			
	private String calReqDate;		
	private String calDate;			
	private String lastCalDate;		
	private String franName;		
	private String partnerName;
	private int pcUsePoint;			
	private int productSellPoint;	
	private int fees;				
	private int calNo;				
	private int payment;			
	private int franNo;				
	private int totalCal;			
	private int calCount;			
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCalReqDate() {
		return calReqDate;
	}
	public void setCalReqDate(String calReqDate) {
		this.calReqDate = calReqDate;
	}
	public String getCalDate() {
		return calDate;
	}
	public void setCalDate(String calDate) {
		this.calDate = calDate;
	}
	public String getLastCalDate() {
		return lastCalDate;
	}
	public void setLastCalDate(String lastCalDate) {
		this.lastCalDate = lastCalDate;
	}
	public String getFranName() {
		return franName;
	}
	public void setFranName(String franName) {
		this.franName = franName;
	}
	public int getPcUsePoint() {
		return pcUsePoint;
	}
	public void setPcUsePoint(int pcUsePoint) {
		this.pcUsePoint = pcUsePoint;
	}
	public int getProductSellPoint() {
		return productSellPoint;
	}
	public void setProductSellPoint(int productSellPoint) {
		this.productSellPoint = productSellPoint;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	public int getCalNo() {
		return calNo;
	}
	public void setCalNo(int calNo) {
		this.calNo = calNo;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public int getFranNo() {
		return franNo;
	}
	public void setFranNo(int franNo) {
		this.franNo = franNo;
	}
	public int getTotalCal() {
		return totalCal;
	}
	public void setTotalCal(int totalCal) {
		this.totalCal = totalCal;
	}
	public int getcalCount() {
		return calCount;
	}
	public void setcalCount(int calCount) {
		this.calCount = calCount;
	}
	
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	
	@Override
	public String toString() {
		return "Cal [userId=" + userId + ", status=" + status + ", calReqDate=" + calReqDate + ", calDate=" + calDate
				+ ", lastCalDate=" + lastCalDate + ", franName=" + franName + ", pcUsePoint=" + pcUsePoint
				+ ", productSellPoint=" + productSellPoint + ", fees=" + fees + ", calNo=" + calNo + ", payment="
				+ payment + ", franNo=" + franNo + ", totalCal=" + totalCal + ", calCount=" + calCount + "]";
	}
}
