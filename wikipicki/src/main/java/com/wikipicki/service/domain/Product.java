package com.wikipicki.service.domain;

import java.util.List;

public class Product {
	
	private int productNo;
	private int franNo;
	private String productName;
	private int price;
	private int totalAmount;
	private String productImg;
	private int historyNo;
	private int amount;
	private String purProductName;
	private int purPrice;
	private List<Product> products;
	private int tranNo;
	private int groupId;
	
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getFranNo() {
		return franNo;
	}
	public void setFranNo(int franNo) {
		this.franNo = franNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public int getHistoryNo() {
		return historyNo;
	}
	public void setHistoryNo(int historyNo) {
		this.historyNo = historyNo;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPurProductName() {
		return purProductName;
	}
	public void setPurProductName(String purProductName) {
		this.purProductName = purProductName;
	}
	public int getPurPrice() {
		return purPrice;
	}
	public void setPurPrice(int purPrice) {
		this.purPrice = purPrice;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public int getTranNo() {
		return tranNo;
	}
	public void setTranNo(int tranNo) {
		this.tranNo = tranNo;
	}
	public int getGroupId() {
		return groupId;
	}
	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
	
	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", franNo=" + franNo + ", productName=" + productName + ", price="
				+ price + ", totalAmount=" + totalAmount + ", productImg=" + productImg + ", historyNo=" + historyNo
				+ ", amount=" + amount + ", putProductName=" + purProductName + ", purPrice=" + purPrice + ", products : " 
				+ products + ", tranNo = " + tranNo + " , groupId = "+ groupId +"]";
	}
}
