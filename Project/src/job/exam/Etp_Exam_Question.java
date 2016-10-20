package job.exam;

import java.io.Serializable;

public class Etp_Exam_Question implements Serializable{
	private int exam_question_no;
	private int question_no;
	private int question_hour;
	private int question_minute;
	private int question_second;
	private int etp_no;
	private int exam_no;
	
	private String question_content;
	private String question_name;
	
	public Etp_Exam_Question(){}

	public Etp_Exam_Question(int exam_question_no, int question_no, int question_hour, int question_minute,
			int question_second, String question_content, String question_name, int etp_no, int exam_no) {
		super();
		this.exam_question_no = exam_question_no;
		this.question_no = question_no;
		this.question_hour = question_hour;
		this.question_minute = question_minute;
		this.question_second = question_second;
		this.question_content = question_content;
		this.question_name = question_name;
		this.etp_no = etp_no;
		this.exam_no = exam_no;
	}

	public int getExam_question_no() {
		return exam_question_no;
	}

	public void setExam_question_no(int exam_question_no) {
		this.exam_question_no = exam_question_no;
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public int getQuestion_hour() {
		return question_hour;
	}

	public void setQuestion_hour(int question_hour) {
		this.question_hour = question_hour;
	}

	public int getQuestion_minute() {
		return question_minute;
	}

	public void setQuestion_minute(int question_minute) {
		this.question_minute = question_minute;
	}

	public int getQuestion_second() {
		return question_second;
	}

	public void setQuestion_second(int question_second) {
		this.question_second = question_second;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}


	public int getEtp_no() {
		return etp_no;
	}

	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public String getQuestion_name() {
		return question_name;
	}

	public void setQuestion_name(String question_name) {
		this.question_name = question_name;
	}
	
	
	
}
