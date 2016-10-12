package job.exam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ETP_Exam_Service {
	private static ETP_Exam_Dao dao;
	private static ETP_Exam_Service service = new ETP_Exam_Service();
	public static ETP_Exam_Service getInstance(){
		dao=ETP_Exam_Dao.getinstance();
		return service;
	}
	public int inputExamScheduleService(HttpServletRequest request){
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		
		ETP_Exam_Info examInfo = new ETP_Exam_Info();
		
		String exam_syear = request.getParameter("exam_syear");
		String exam_smonth = request.getParameter("exam_smonth");
		String exam_sday = request.getParameter("exam_sday");
		String str_exam_sdate = exam_syear+exam_smonth+exam_sday;
		
		String exam_dyear = request.getParameter("exam_dyear");
		String exam_dmonth = request.getParameter("exam_dmonth");
		String exam_dday = request.getParameter("exam_dday");
		String str_exam_ddate = exam_dyear+exam_dmonth+exam_dday;
		/*시험시작일*/
		try{
			Date exam_sdate = format.parse(str_exam_sdate);
			examInfo.setExam_sdate(exam_sdate);
		}catch(Exception e){
			e.printStackTrace();
		}
		/*시험종료일*/
		try {
			Date exam_ddate = format.parse(str_exam_ddate);
			examInfo.setExam_ddate(exam_ddate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*시험명*/
		examInfo.setExam_name(request.getParameter("exam_name"));
		/*시험과목*/
		examInfo.setExam_field(request.getParameter("exam_field"));
		/*응시인원*/
		examInfo.setExam_number(Integer.parseInt(request.getParameter("exam_number")));
		
		return dao.inputExamSchedule(examInfo);
	}
	
}
