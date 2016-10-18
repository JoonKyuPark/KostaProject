package job.exam;

import javax.servlet.http.HttpServletRequest;

public class Etp_Question_Service {
	private static Etp_Question_Dao dao;
	private static Etp_Question_Service service = new Etp_Question_Service();
	
	public Etp_Question_Service getInstance(){
		dao = Etp_Question_Dao.getInstance();
		return service;
	}
	public int inputQuestionService(HttpServletRequest request){
		Etp_Exam_Question question = new Etp_Exam_Question();
		question.setExam_question_no(dao.countExamQuestion());
		question.setQuestion_hour(Integer.parseInt(request.getParameter("question_hour")));
		question.setQuestion_minute(Integer.parseInt(request.getParameter("question_minute")));
		question.setQuestion_second(Integer.parseInt(request.getParameter("question_second")));
		
		
		
		
		
		return dao.inputQuestion(question);
	}
}
