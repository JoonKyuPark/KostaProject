package member.model;

import java.util.List;



public class ETP_Exam_Service {
	private static ETP_Exam_Dao dao;
	public static final int PAGE_SIZE = 5; 
	private static ETP_Exam_Service service = new ETP_Exam_Service();
	public static ETP_Exam_Service getInstance(){
		dao=ETP_Exam_Dao.getinstance();
		return service;
	}
	
	
	public ListModel getEtplist(int gno,int requestPage){
				
		//총카운트 가져오기 
		int totalCount = dao.selectlog_id();   //총글 갯수
		
		int totalPageCount = totalCount/PAGE_SIZE;	 
		
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;						//총 페이지수
		}
		
		int startPage = requestPage - (requestPage - 1) % 5; //시작페이지
		int endPage = startPage + 4;  //끝나는 페이지
		
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage - 1) * PAGE_SIZE;  //시작로우
		
		List<Etp> list = dao.selectEtp(gno,startRow);
		
			
		ListModel listModel= new ListModel(requestPage, totalPageCount, startPage, endPage, list);
		
		return listModel;
		
	}
	
	//기업번호 리턴
	public int getGno(int gid2){
				
			System.out.println("로그번호 리턴"+(dao.selectlog_id()+1));
		
			return dao.getGno(gid2);
	}
	
	public int Insertmem_log(int b_id,int gno ){
		ETP_mem_log log = new ETP_mem_log();
		
		log.setMem_logno(dao.selectlog_id()+1);  //로그번호
		log.setEtp_no(gno);	// 기업번호
		log.setMember_no(b_id); //개인 회원번호 
				
		return dao.Insertmem_log(log);
		
	}
	
	
	public void deletedinfo(int log){
		System.out.println("service 성공");
		dao.deleted(log);
	}

	

	public static int getPageSize() {
		return PAGE_SIZE;
	}
	
	
}
