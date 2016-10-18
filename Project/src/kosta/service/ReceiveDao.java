package kosta.service;

import java.util.ArrayList;
import java.util.List;
import kosta.model.SessionFactory;
import kosta.model.Recruit_log;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kosta.mapper.mapper;

public class ReceiveDao 
{
	private ReceiveDao dao = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	//construct
	public ReceiveDao()
	{
		SessionFactory sf = new SessionFactory();
		sqlSessionFactory = sf.getInstance();
	}//construct
	
	//method
	public ReceiveDao getInstance()
	{
		return this.dao;
	}//ReceiveDao
	

	public List<Recruit_log> getList()
	{
		List<Recruit_log> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try
		{
			//여기까지 옴, 잘처리함 근데 가지고온 데이터가 없다?!
			list = sqlSession.getMapper(mapper.class).getList();			
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		finally
		{
			if( sqlSession != null )
			{
				sqlSession.close();
			}//if
		}
		
		return list;
	}//getList
	
	public int getMember_Number( String b_id )
	{
		int member_no = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try
		{
			//여기까지 옴, 잘처리함 근데 가지고온 데이터가 없다?!
			member_no = sqlSession.getMapper(mapper.class).getMember_Number(b_id);		
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		finally
		{
			if( sqlSession != null )
			{
				sqlSession.close();
			}//if
		}
		return member_no;
	}//getMember_Number

}//end class
