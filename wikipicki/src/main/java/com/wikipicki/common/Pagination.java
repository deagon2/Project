package com.wikipicki.common;

public class Pagination {

	private int listSize = 10;		//�ʱⰪ���� ��ϰ����� 10���� ����
	private int rangeSize = 10;		//�ʱⰪ���� ������������ 10���� ����
	private int page;				// ���� ����� ������ ��ȣ
	private int range; 				
	private int listCnt;			// ��ü �Խù��� ��
	private int pageCnt;			// ��ü ������ ������ ����
	private int startPage;			// �� �������� ���� ���� ��ȣ
	private int startList; 
	private int endPage;			// �������� ���� �� ��ȣ
	private boolean prev;			// ���� ������ ����
	private boolean next;			// ���� ������ ����

	public int getRangeSize() {
		return rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getStartList() {
		return startList;
	}

	public void pageInfo2(int page, int range, int listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		//��ü �������� 
		this.pageCnt = (int) Math.ceil(listCnt/listSize);
		//���� ������
		this.startPage = (range - 1) * rangeSize + 1 ;
		//�� ������
		this.endPage = range * rangeSize;
		//�Խ��� ���۹�ȣ
		this.startList = (page - 1) * listSize;
		//���� ��ư ����
		this.prev = range == 1 ? false : true;
		//���� ��ư ����
		this.next = pageCnt > endPage ? true : false;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}

	@Override
	public String toString() {
		return "Pagination [listSize=" + listSize + ", rangeSize=" + rangeSize + ", page=" + page + ", range=" + range
				+ ", listCnt=" + listCnt + ", pageCnt=" + pageCnt + ", startPage=" + startPage + ", startList="
				+ startList + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + "]";
	}
}