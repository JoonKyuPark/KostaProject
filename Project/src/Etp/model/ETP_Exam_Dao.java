package Etp.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import Etp.mapper.ResumeMapper;

public class ETP_Exam_Dao {
	
	private static ETP_Exam_Dao dao = new ETP_Exam_Dao();
	
	public static ETP_Exam_Dao getinstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream input = null;
		
		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}

	
	
	
	public List<Etp> selectEtp(int b_id){
		List<Etp> list = null;
		
		SqlSession session = getSqlSessionFactory().openSession();
	
	
		try {
			
			list = session.getMapper(ResumeMapper.class).Etpselect(b_id);
			return list;
			
		} catch (Exception e) {
			
		} finally{
			
			if(list == null)			
			session.close();
		}
		
		
		
		

		return list;
	}
	
	
	
	
}
