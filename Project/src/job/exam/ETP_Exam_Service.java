package job.exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ETP_Exam_Service {
	private static ETP_Exam_Dao dao;
	private static ETP_Exam_Service service = new ETP_Exam_Service();
	public static ETP_Exam_Service getInstance(){
		dao=ETP_Exam_Dao.getinstance();
		return service;
	}
	public int inputExamScheduleService(HttpServletRequest request, HttpServletResponse response){
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		ETP_Exam_Info examInfo = new ETP_Exam_Info();
		String exam_syear = request.getParameter("exam_syear");
		String exam_smonth = "";
		if(request.getParameter("exam_smonth").length()==1){
			exam_smonth = "0" + request.getParameter("exam_smonth");
		}else{
			exam_smonth = request.getParameter("exam_smonth");
		}
		String exam_sday = "";
		if(request.getParameter("exam_sday").length()==1){
			exam_sday = "0" + request.getParameter("exam_sday");
		}else{
			exam_sday = request.getParameter("exam_sday");
		}
		String str_exam_sdate = exam_syear+"/"+exam_smonth+"/"+exam_sday;	
		String exam_dyear = request.getParameter("exam_dyear");
		String exam_dmonth = request.getParameter("exam_dmonth");
		if(request.getParameter("exam_dmonth").length()==1){
			exam_dmonth = "0" + request.getParameter("exam_dmonth");
		}else{
			exam_dmonth = request.getParameter("exam_dmonth");
		}
		String exam_dday = "";
		if(request.getParameter("exam_dday").length()==1){
			exam_dday = "0" + request.getParameter("exam_dday");
		}else{
			exam_dday = request.getParameter("exam_dday");
		}
		String str_exam_ddate = exam_dyear+"/"+exam_dmonth+"/"+exam_dday;	
		/*시험번호*/
		examInfo.setExam_no(dao.countExamNo()+1);
		/*시험시작일*/
		try{
			Date date_exam_sdate = format.parse(str_exam_sdate);
			long time= date_exam_sdate.getTime();
			Timestamp exam_sdate = new Timestamp(time);
			examInfo.setExam_sdate(exam_sdate);
		}catch(Exception e){
			e.printStackTrace();
		}
		/*시험종료일*/
		try {
			Date date_exam_ddate = format.parse(str_exam_ddate);
			long time=date_exam_ddate.getTime();
			Timestamp exam_ddate = new Timestamp(time);
			examInfo.setExam_ddate(exam_ddate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*날짜비교*/
		Date sdate = examInfo.getExam_sdate();
		Date ddate = examInfo.getExam_ddate();
		if(sdate.compareTo(ddate)>-1){
			response.setCharacterEncoding("utf-8");
			PrintWriter writer;
			System.out.println("12");
			try {
				writer = response.getWriter();
				writer.println("<script>");
				writer.println("alert('종료일이 시작일보다 빠릅니다.');");
				writer.println("history.back();");
				writer.println("</script>");
				writer.flush();
				return 0;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				response.sendRedirect("ETP_Exam_main.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		/*시험명*/
		examInfo.setExam_name(request.getParameter("exam_name"));
		/*시험과목*/
		examInfo.setExam_field(request.getParameter("exam_field"));
		/*응시인원*/
		examInfo.setExam_number(Integer.parseInt(request.getParameter("exam_number")));
		return dao.inputExamSchedule(examInfo);
	}
	public List<ETP_Exam_Info> examListService(){
		return dao.examList();
	}
	
}
