package job.exam;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Etp_Question_Dao {
	private static Etp_Question_Dao dao = new Etp_Question_Dao();
	
	public static Etp_Question_Dao getInstance(){
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
	public int inputQuestion(Etp_Exam_Question question){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re=sqlSession.getMapper(Etp_Question_Mapper.class).insertQuestion(question);
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
	public int countExamQuestion(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(Etp_Question_Mapper.class).countExamQuestion()==null){
				return 0;
			}else{
				return sqlSession.getMapper(Etp_Question_Mapper.class).countExamQuestion();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public List<Integer> selectExamNo(){
			System.out.println("dao시작");
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			try {
				List<Integer> list = sqlSession.getMapper(Etp_Question_Mapper.class).selectExamNo();
				System.out.println("dao 종료");
				return list;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
	}
	
	
	
	
	
	public int countQuestionNo(int exam_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(Etp_Question_Mapper.class).countQuestion(exam_no)==null){
				return 0;
			}else{
				return sqlSession.getMapper(Etp_Question_Mapper.class).countQuestion(exam_no);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
