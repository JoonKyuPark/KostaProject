package kosta.model;

import java.util.List;

public class ListModel {

	private int requestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;
	private List<View_information> list;
	
	
	
	public ListModel(){}



	public ListModel(int requestPage, int totalPageCount, int startPage,
			int endPage, List<View_information> list) {
		super();
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
		this.list = list;
	}



	public int getRequestPage() {
		return requestPage;
	}



	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}



	public int getTotalPageCount() {
		return totalPageCount;
	}



	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
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



	public List<View_information> getList() {
		return list;
	}



	public void setList(List<View_information> list) {
		this.list = list;
	}


	
	
	
	
	
}
