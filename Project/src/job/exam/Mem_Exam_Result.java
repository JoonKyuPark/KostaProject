package job.exam;

public class Mem_Exam_Result {
	private int exam_result_no;
	private int member_no;
	private int exam_no;
	private int exam_question_no;
	
	private String result;
	
	public Mem_Exam_Result(){}



	public Mem_Exam_Result(int exam_result_no, int member_no, int exam_no, int exam_question_no, String result) {
		super();
		this.exam_result_no = exam_result_no;
		this.member_no = member_no;
		this.exam_no = exam_no;
		this.exam_question_no = exam_question_no;
		this.result = result;
	}



	public int getexam_result_no() {
		return exam_result_no;
	}



	public void setexam_result_no(int exam_result_no) {
		this.exam_result_no = exam_result_no;
	}



	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getExam_question_no() {
		return exam_question_no;
	}

	public void setExam_question_no(int exam_question_no) {
		this.exam_question_no = exam_question_no;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
