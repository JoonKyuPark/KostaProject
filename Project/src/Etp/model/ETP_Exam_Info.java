package Etp.model;

import java.io.Serializable;
import java.util.Date;

public class ETP_Exam_Info implements Serializable{
	private int exam_no;
	private int exam_number;
	private Date exam_sdate;
	private Date exam_ddate;
	private String exam_name;
	private String exam_field;
	public ETP_Exam_Info(){}
	
	public ETP_Exam_Info(int exam_no, int exam_number, Date exam_sdate, Date exam_ddate,
			String exam_name, String exam_field) {
		super();
		this.exam_no = exam_no;
		this.exam_number = exam_number;
		this.exam_sdate = exam_sdate;
		this.exam_ddate = exam_ddate;
		this.exam_name = exam_name;
		this.exam_field = exam_field;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getExam_number() {
		return exam_number;
	}

	public void setExam_number(int exam_number) {
		this.exam_number = exam_number;
	}

	public Date getExam_sdate() {
		return exam_sdate;
	}

	public void setExam_sdate(Date exam_sdate) {
		this.exam_sdate = exam_sdate;
	}

	public Date getExam_ddate() {
		return exam_ddate;
	}

	public void setExam_ddate(Date exam_ddate) {
		this.exam_ddate = exam_ddate;
	}

	public String getExam_name() {
		return exam_name;
	}

	public void setExam_name(String exam_name) {
		this.exam_name = exam_name;
	}

	public String getExam_field() {
		return exam_field;
	}

	public void setExam_field(String exam_field) {
		this.exam_field = exam_field;
	}
	
	
	
}