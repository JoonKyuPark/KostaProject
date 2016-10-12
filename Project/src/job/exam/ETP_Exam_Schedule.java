package job.exam;

import java.sql.Timestamp;

public class ETP_Exam_Schedule {
	private int exam_no;
	private int exam_num;
	
	private String exam_name;
	private String exam_field;
	
	private Timestamp exam_sdate;
	private Timestamp exam_ddate;
	public ETP_Exam_Schedule(int exam_no, int exam_num, String exam_name,
			String exam_field, Timestamp exam_sdate, Timestamp exam_ddate) {
		super();
		this.exam_no = exam_no;
		this.exam_num = exam_num;
		this.exam_name = exam_name;
		this.exam_field = exam_field;
		this.exam_sdate = exam_sdate;
		this.exam_ddate = exam_ddate;
	}
	public int getExam_no() {
		return exam_no;
	}
	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}
	public int getExam_num() {
		return exam_num;
	}
	public void setExam_num(int exam_num) {
		this.exam_num = exam_num;
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
	public Timestamp getExam_sdate() {
		return exam_sdate;
	}
	public void setExam_sdate(Timestamp exam_sdate) {
		this.exam_sdate = exam_sdate;
	}
	public Timestamp getExam_ddate() {
		return exam_ddate;
	}
	public void setExam_ddate(Timestamp exam_ddate) {
		this.exam_ddate = exam_ddate;
	}

	
}
