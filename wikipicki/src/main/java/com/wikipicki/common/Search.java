package com.wikipicki.common;

public class Search extends Pagination {
	
	private String searchType;
	private String keyword;	
	private String orderBy;
	private String userId;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "Search [searchType=" + searchType + ", keyword=" + keyword + ", orderBy=" + orderBy + ", userId="+ userId+"]";
	}
}
