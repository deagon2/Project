package com.wikipicki.service.domain;

import java.io.Serializable;

public class Program implements Serializable{
	
	private int franSeatRegNo;
	private int franNo;
	private String status;
	private int seatNo;
	private int nowSeat;
	
	public Program() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getFranSeatRegNo() {
		return franSeatRegNo;
	}


	public void setFranSeatRegNo(int franSeatRegNo) {
		this.franSeatRegNo = franSeatRegNo;
	}


	public int getFranNo() {
		return franNo;
	}


	public void setFranNo(int franNo) {
		this.franNo = franNo;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getSeatNo() {
		return seatNo;
	}


	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}



	public int getNowSeat() {
		return nowSeat;
	}

	public void setNowSeat(int nowSeat) {
		this.nowSeat = nowSeat;
	}

	@Override
	public String toString() {
		return "Program [franSeatRegNo=" + franSeatRegNo + ", franNo=" + franNo + ", status=" + status + ", seatNo="
				+ seatNo + "]";
	}

}
