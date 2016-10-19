package job.exam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Etp_Question_Service {
	private static Etp_Question_Dao dao;
	private static Etp_Question_Service service = new Etp_Question_Service();
	
	public static Etp_Question_Service getInstance(){
		dao = Etp_Question_Dao.getInstance();
		return service;
	}
	public int inputQuestionService(HttpServletRequest request){
		List<Integer> list = dao.selectExamNo();
		
		Etp_Exam_Question question = new Etp_Exam_Question();
	
		question.setQuestion_name(request.getParameter("question_name"));
		question.setExam_question_no(dao.countExamQuestion()+1);
		question.setQuestion_hour(Integer.parseInt(request.getParameter("question_hour")));
		question.setQuestion_minute(Integer.parseInt(request.getParameter("question_minute")));
		question.setQuestion_second(Integer.parseInt(request.getParameter("question_second")));
		question.setQuestion_content(request.getParameter("question_content"));
		question.setExam_no(Integer.parseInt(request.getParameter("exam_no")));
		for(int i=0; i<list.size(); i++){
			System.out.println("for");
			if(list.get(i) == Integer.parseInt(request.getParameter("exam_no"))){
				question.setQuestion_no(dao.countQuestionNo(Integer.parseInt(request.getParameter("exam_no")))+1);
				System.out.println(dao.countQuestionNo(Integer.parseInt(request.getParameter("exam_no"))));
				System.out.println(request.getParameter("exam_no"));
			}else{
				System.out.println("else");
				question.setQuestion_no(1);
			}
		}
		question.setEtp_no(1);
		
		
		
		
		return dao.inputQuestion(question);
	}
	
}
