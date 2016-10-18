package kosta.service;

import java.util.List;
import kosta.model.Recruit_log;
import kosta.service.ReceiveService;

public class ReceiveService 
{
	ReceiveDao dao = null;
	
	public ReceiveService()
	{
		this.dao = new ReceiveDao();
	}
	
	public List<Recruit_log> getList()
	{
		List<Recruit_log> list = null;
		
		try
		{
			list = this.dao.getList();
			System.out.println("Service.getList()");
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		return list;
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
	}
}
