package job.exam;

import java.sql.Time;

public class exam_question {
	private int exam_question_no;
	private int question_no;
	private int etp_no;
	
	private String question_content;
	
	private Time question_time;

	public exam_question(){}
	
	public exam_question(int exam_question_no, int question_no, int etp_no,
			String question_content, Time question_time) {
		super();
		this.exam_question_no = exam_question_no;
		this.question_no = question_no;
		this.etp_no = etp_no;
		this.question_content = question_content;
		this.question_time = question_time;
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

	public int getEtp_no() {
		return etp_no;
	}

	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public Time getQuestion_time() {
		return question_time;
	}

	public void setQuestion_time(Time question_time) {
		this.question_time = question_time;
	} 
	
	
	
}

