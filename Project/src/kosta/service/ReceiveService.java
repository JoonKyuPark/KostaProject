package kosta.service;

import java.util.List;

import kosta.model.ListModel;
import kosta.model.View_information;

public class ReceiveService 
{
	ReceiveDao dao = null;
	public static final int PAGE_SIZE = 5; 
	public ReceiveService()
	{
		this.dao = new ReceiveDao();
	}
	
	public ListModel getList(int member_no ,int requestPage)
	{	
	     //총카운트 가져오기 
	      int totalCount = dao.selectlog_id();   //총글 갯수
	      
	      int totalPageCount = totalCount/PAGE_SIZE;    
	      
	      if(totalCount%PAGE_SIZE > 0){
	         totalPageCount++;                  //총 페이지수
	      }
	      
	      int startPage = requestPage - (requestPage - 1) % 5; //시작페이지
	      int endPage = startPage + 4;  //끝나는 페이지
	      
	      if(endPage > totalPageCount){
	         endPage = totalPageCount;
	      }
	      
	      int startRow = (requestPage - 1) * PAGE_SIZE;  //시작로우
	      
	      List<View_information> list = dao.getList(member_no,startRow);
	      
	    
	      ListModel listModel= new ListModel(requestPage, totalPageCount, startPage, endPage, list);
			
		
		return listModel;
	}//getList
	
	public int getMember_Number( String b_id )
	{
		int member_no = 0;

		try
		{
			member_no = this.dao.getMember_Number(b_id);
			System.out.println("Service.getMember_Number()");
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		return member_no;
	}//getMember_Number
	
	public void Insert_member( int member_no )
	{
		try
		{
			this.dao.Insert_member(member_no);
			System.out.println("Service.Insert_member()");
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}//catch
	}//Insert_member
	
	public static int getPageSize() 
	{
		return PAGE_SIZE;
	}//getPageSize
	   
	public void removeList( int remove )
	{
		//주어진 번호에 해당하는
		//recruit_log row를 삭제합니다.
		this.dao.removeList(remove);
	}//removeList
}//end class
