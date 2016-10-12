package job.exam;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
	public int inputExamSchedule(ETP_Exam_Info examInfo){
		int re  = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
	}
}
