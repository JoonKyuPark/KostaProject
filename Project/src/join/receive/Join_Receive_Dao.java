package join.receive;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import join.receive.mapper.Join_Receive_Mapper;
import recruit.infor.Recruit_Infor;
import recruit.mapper.Recruit_infor_Mapper;

public class Join_Receive_Dao {
	
	
	private static Join_Receive_Dao dao = new Join_Receive_Dao();
	
	public static Join_Receive_Dao getInstance(){
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
	
	
	public int selectJoin_id() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1");
		if (sqlSession.getMapper(Join_Receive_Mapper.class).selectJoin_id() == null) {
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD12");
			return 0;
		} else {
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD13");
			int a= sqlSession.getMapper(Join_Receive_Mapper.class).selectJoin_id();
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD14");
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD14"+a);
			 return a;
		}
	}

	public int insertJoin(Join_Receive jr){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD15"+jr.getJoin_receive_no());
			re = sqlSession.getMapper(Join_Receive_Mapper.class).insertJoin(jr);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return re;
	}

	public List<Join_Receive> listJoin() {
		System.out.println("Dddd0");
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("Dddd99");
		List<Join_Receive> list=null;
		System.out.println("Dddd1");
		try {
			list= sqlSession.getMapper(Join_Receive_Mapper.class).listJoin();
		} catch (Exception e) {
			e.printStackTrace();
		} /*finally {
			sqlSession.close();
		}*/
		
		System.out.println("Dddd3");
		return list;
	}
	

}
