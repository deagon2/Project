package com.wikipicki.service.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonProperty;


public class Fran implements Serializable{


	private	String	userId;				// 가맹회원 아이디
	private	int 	franNo;				// 가맹점 등록번호
	private	String 	comRegNo;			// 사업자 등록번호
	private	int 	franCost;			// 가맹점 이용가격
	private	String 	franImage;			// 가맹점 실내사진
	private	String 	franName;			// 가맹점 이름	
	private	String 	franAddress;		// 가맹점 주소
	private	String	franStatus;			// 가맹점 상태 t/f 영업중 폐업중
	private	String 	partnerName;		// 프랜차이즈 이름
	private	String 	franLeave;			// 가맹점 탈퇴 사유
	private	String	franState;			// 가맹점 처리상태 (처리중/처리완료)
	private	int 	franTotalSeat;		// 가맹점 총 좌석수
	private	String	franRegDate;		// 가맹점 가입날짜
	private	String	franLeaveDate;		// 가맹점 탈퇴날짜
	private	String	cpu;				// cpu
	private	String	gpu;				// gpu
	private	String	ram;				// ram
	private	String	monitor;			// monitor
	private	String	keyboard;			// keyboard
	private	String	mouse;				// mouse
	private BigDecimal 		latitude;			// y축 위도
	private BigDecimal		longitude;			// x축 경도

	
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
	public String getComRegNo() {
		return comRegNo;
	}
	public void setComRegNo(String comRegNo) {
		this.comRegNo = comRegNo;
	}
	public int getFranCost() {
		return franCost;
	}
	public void setFranCost(int franCost) {
		this.franCost = franCost;
	}
	public String getFranImage() {
		return franImage;
	}
	public void setFranImage(String franImage) {
		this.franImage = franImage;
	}
	public String getFranName() {
		return franName;
	}
	public void setFranName(String franName) {
		this.franName = franName;
	}
	
	public String getFranAddress() {
		return franAddress;
	}
	public void setFranAddress(String franAddress) {
		this.franAddress = franAddress;
	}
	public String getFranStatus() {
		return franStatus;
	}
	public void setFranStatus(String franStatus) {
		this.franStatus = franStatus;
	}
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	public String getFranLeave() {
		return franLeave;
	}
	public void setFranLeave(String franLeave) {
		this.franLeave = franLeave;
	}
	public String getFranState() {
		return franState;
	}
	public void setFranState(String franState) {
		this.franState = franState;
	}
	public int getFranTotalSeat() {
		return franTotalSeat;
	}
	public void setFranTotalSeat(int franTotalSeat) {
		this.franTotalSeat = franTotalSeat;
	}

	public String getFranRegDate() {
		return franRegDate;
	}
	public String getFranLeaveDate() {
		return franLeaveDate;
	}
	public void setFranRegDate(String franRegDate) {
		this.franRegDate = franRegDate;
	}
	public void setFranLeaveDate(String franLeaveDate) {
		this.franLeaveDate = franLeaveDate;
	}


	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getGpu() {
		return gpu;
	}
	public void setGpu(String gpu) {
		this.gpu = gpu;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getMonitor() {
		return monitor;
	}
	public void setMonitor(String monitor) {
		this.monitor = monitor;
	}
	public String getKeyboard() {
		return keyboard;
	}
	public void setKeyboard(String keyboard) {
		this.keyboard = keyboard;
	}
	public String getMouse() {
		return mouse;
	}
	public void setMouse(String mouse) {
		this.mouse = mouse;
	}

	public BigDecimal getLatitude() {
		return latitude;
	}
	public BigDecimal getLongitude() {
		return longitude;
	}
	public void setLatitude(BigDecimal latitude) {
		this.latitude = latitude;
	}
	public void setLongitude(BigDecimal longitude) {
		this.longitude = longitude;
	}
	@Override
	public String toString() {
		return "Fran [userId=" + userId + ", franNo=" + franNo + ", comRegNo=" + comRegNo + ", franCost=" + franCost
				+ ", franImage=" + franImage + ", franName=" + franName + ", franAddress=" + franAddress
				+ ", franStatus=" + franStatus + ", partnerName=" + partnerName + ", franLeave=" + franLeave
				+ ", franState=" + franState + ", franTotalSeat=" + franTotalSeat + ", franRegDate=" + franRegDate
				+ ", franLeaveDate=" + franLeaveDate + ", cpu=" + cpu + ", gpu=" + gpu + ", ram=" + ram + ", monitor="
				+ monitor + ", keyboard=" + keyboard + ", mouse=" + mouse + ", latitude=" + latitude + ", longitude="
				+ longitude + "]";
	}
	
	
	



	
	
}