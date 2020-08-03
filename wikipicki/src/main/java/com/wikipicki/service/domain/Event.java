package com.wikipicki.service.domain;

import java.io.Serializable;
import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Event implements Serializable{
	
	public Event() {
	}
	
	private String eventTitle;
	private String eventContent;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date eventStartDate;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date eventEndDate;
	private String userId;
	private String eventFile;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Date eventAddDate;
	private String eventStatus;
	private int eventNo;
	private String eventType = "event";
	
	public String getEventTitle() {
		return eventTitle;
	}


	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}


	public String getEventContent() {
		return eventContent;
	}


	public void setEventContent(String eventContent) {
		this.eventContent = eventContent;
	}


	public Date getEventStartDate() {
		return eventStartDate;
	}


	public void setEventStartDate(Date eventStartDate) {
		this.eventStartDate = eventStartDate;
	}


	public Date getEventEndDate() {
		return eventEndDate;
	}


	public void setEventEndDate(Date eventEndDate) {
		this.eventEndDate = eventEndDate;
	}


	public Date getEventAddDate() {
		return eventAddDate;
	}


	public void setEventAddDate(Date eventAddDate) {
		this.eventAddDate = eventAddDate;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getEventFile() {
		return eventFile;
	}


	public void setEventFile(String eventFile) {
		this.eventFile = eventFile;
	}


	public String getEventStatus() {
		return eventStatus;
	}


	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}


	public int getEventNo() {
		return eventNo;
	}


	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}


	public String getEventType() {
		return eventType;
	}


	public void setEventType(String eventType) {
		this.eventType = eventType;
	}


	@Override
	public String toString() {
		return "Event [eventTitle=" + eventTitle + ", eventContent=" + eventContent + ", eventStartDate="
				+ eventStartDate + ", eventEndDate=" + eventEndDate + ", eventAddDate=" + eventAddDate + ", userId="
				+ userId + ", eventFile=" + eventFile + ", eventStatus=" + eventStatus + ", eventNo=" + eventNo
				+ ", eventType=" + eventType + "]";
	}
	
	
}