package Etp.model;

import java.util.List;



public class ETP_Exam_Service {
	private static ETP_Exam_Dao dao;
	private static ETP_Exam_Service service = new ETP_Exam_Service();
	public static ETP_Exam_Service getInstance(){
		dao=ETP_Exam_Dao.getinstance();
		return service;
	}
	
	
	public List<Etp> getEtplist(int b_id){
		
		
		return dao.selectEtp(b_id);
			
	}
	
	//기업번호 리턴
	public int getGno(int gid2){
			return dao.getGno(gid2);
	}
	
	
	
	
	
}
