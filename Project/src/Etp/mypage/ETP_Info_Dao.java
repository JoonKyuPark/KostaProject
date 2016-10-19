package Etp.mypage;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ETP_Info_Dao {
	private static ETP_Info_Dao etp_info_dao = new ETP_Info_Dao();
	
	public static ETP_Info_Dao getInstance(){
		return etp_info_dao;
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
	
	public int etp_insert_info(ETP_Infor etp_info){  //다음순서 - board.xml가서 작성해
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try{
			re = sqlSession.getMapper(ETP_Info_Mapper.class).etp_insert_info(etp_info);
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
	
	public int etp_update_info(ETP_Infor etp_info){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1; //트랜젝션처리
		
		try{
			re = sqlSession.getMapper(ETP_Info_Mapper.class).etp_update_info(etp_info);
			if(re>0){
				sqlSession.commit();
			}else{
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
