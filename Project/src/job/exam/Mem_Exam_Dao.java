package job.exam;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Mem_Exam_Dao {

	private static Mem_Exam_Dao dao = new Mem_Exam_Dao();

	public static Mem_Exam_Dao getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream input = null;

		try {
			input = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(input);
	}
	public List<Etp_Exam_Info> examList(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			return sqlSession.getMapper(Mem_Exam_Mapper.class).examList();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			sqlSession.close();
		}
	}
	public List<Etp_Exam_Question> questionList(int exam_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			return sqlSession.getMapper(Mem_Exam_Mapper.class).questionList(exam_no);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}finally{
			sqlSession.close();
		}
	}
	
}
