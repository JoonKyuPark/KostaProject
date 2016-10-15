package job.resume;

import java.io.InputStream;

import job.resume.mapper.ResumeMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Resume_Dao {
	private static Resume_Dao dao = new Resume_Dao();
	public static Resume_Dao getInstance(){
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
	
	public int insertResume(Resume resume){
		int re = 0;
		
		 SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(ResumeMapper.class).insertResume(resume);
			
			 if(re>0){
		            sqlSession.commit();
		         }else{
		            sqlSession.rollback();
		         }
		} catch (Exception e) {
		
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		
		System.out.println(resume.getVolun_field());
		return re;
	}
	
	
	
	
	
	
	
}
