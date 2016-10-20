package job.exam;

import java.util.List;

public class Mem_Exam_Service {

		private static Mem_Exam_Dao dao;
		private static Mem_Exam_Service service = new Mem_Exam_Service();
		
		public static Mem_Exam_Service getInstance(){
			dao = Mem_Exam_Dao.getInstance();
			return service;
		}
		
		public List<Etp_Exam_Info> examListService(){
			return dao.examList();
		}
		public List<Etp_Exam_Question> questionListService(int exam_no){
			return dao.questionList(exam_no);
		}
	
}
