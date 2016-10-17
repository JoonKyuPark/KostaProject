package job.exam;

import java.util.List;

public class Etp_Exam_listModel {

	private List<Etp_Exam_Info> list;
	private int requestPage;
	private int totalPageCount;
	private int startPage;
	private int endPage;
	
	public Etp_Exam_listModel(){}

	public Etp_Exam_listModel(List<Etp_Exam_Info> list, int requestPage,
			int totalPageCount, int startPage, int endPage) {
		super();
		this.list = list;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}

	public List<Etp_Exam_Info> getList() {
		return list;
	}

	public void setList(List<Etp_Exam_Info> list) {
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
	
	
}
