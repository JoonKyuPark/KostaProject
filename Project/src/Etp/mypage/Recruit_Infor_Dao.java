package Etp.mypage;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Recruit_Infor_Dao {
	private static Recruit_Infor_Dao dao = new Recruit_Infor_Dao();
	
	public static Recruit_Infor_Dao getInstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){ 
	      String resource="mybatis-config.xml";
	      
	      InputStream input=null;
	      try{
	         input=Resources.getResourceAsStream(resource);
	      }catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return new SqlSessionFactoryBuilder().build(input);
	   }
	
	public int recruit_insert_Infor(Recruit_Infor recruit_Infor){  //다음순서 - board.xml가서 작성해
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try{
			re = sqlSession.getMapper(Recruit_Infor_Mapper.class).Recruit_insert_Infor(recruit_Infor);
			if(re>0){  //트랜젝션처리
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		
		return re;
	}
}
