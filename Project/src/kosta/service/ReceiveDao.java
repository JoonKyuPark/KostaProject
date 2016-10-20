package kosta.service;

import java.util.List;

import kosta.mapper.mapper;
import kosta.model.Dummy;
import kosta.model.Recruit_log;
import kosta.model.SessionFactory;
import kosta.model.View_information;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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
	

	public List<View_information> getList( int member_no,int startRow )
	{
		List<View_information> list = null;
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		 int page_size = ReceiveService.getPageSize();
		
		
		
		try
		{
			//여기까지 옴, 잘처리함 근데 가지고온 데이터가 없다?!
			
			list =  sqlSession.getMapper(mapper.class).getList(new RowBounds(startRow,page_size),member_no);
		
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
	
	public void Insert_member( int member_no )
	{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int re = -1;
		
		try
		{
			System.out.println( member_no );
			re = sqlSession.getMapper(mapper.class).Insert_member(member_no);
			if( re > 0 )
			{
				sqlSession.commit();
			}
			else
			{
				sqlSession.rollback();
			}
			
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
	}//Insert_member

	public int selectlog_id(){
	      int result = 0;
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      
	      if(sqlSession.getMapper(mapper.class).selectlog_id() != null){
	         try 
	         {
	        	 result = sqlSession.getMapper(mapper.class).selectlog_id();
	         } catch (Exception e) 
	         {
	            e.printStackTrace();
	         }finally{
	            sqlSession.close();
	         }
	      }
	      
	      return result;
	   }
	
	
	public Recruit_log combine( Dummy dummy )
	{
		Recruit_log recruit = new Recruit_log();
		return recruit;
	}//Recruit_log
	
	public void removeList( int remove )
	{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
        try 
        {
       	 	sqlSession.getMapper(mapper.class).removeList(remove);
        } catch (Exception e) 
        {
           e.printStackTrace();
        }finally{
           sqlSession.close();
        }
	}//removeList
}//end class
