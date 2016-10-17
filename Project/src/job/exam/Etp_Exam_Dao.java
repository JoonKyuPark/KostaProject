package job.exam;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Etp_Exam_Dao {
	
	private static Etp_Exam_Dao dao = new Etp_Exam_Dao();
	
	public static Etp_Exam_Dao getinstance(){
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
	/****************시험정보입력****************/
	public int inputExamSchedule(Etp_Exam_Info examInfo){
		int re  = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re=sqlSession.getMapper(Etp_Exam_Mapper.class).insertExamInfo(examInfo);
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
		
		return re;
	}
	public int countExamNo(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			if(sqlSession.getMapper(Etp_Exam_Mapper.class).countExamNo()==null){
				return 0;
			}else{
				return sqlSession.getMapper(Etp_Exam_Mapper.class).countExamNo();
			}
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	public List<Etp_Exam_Info> examList(int startRow, int etp_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			return sqlSession.getMapper(Etp_Exam_Mapper.class).examList(new RowBounds(startRow,10), etp_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally{
			sqlSession.close();
		}
	}
	public int countExam(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try{
			re=sqlSession.getMapper(Etp_Exam_Mapper.class).countExam();
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
	public List<Etp_Exam_Info> calendarList(int etp_no){
		SqlSession sqlSession	= getSqlSessionFactory().openSession();
				try {
					return sqlSession.getMapper(Etp_Exam_Mapper.class).calendarList(etp_no);
				} catch (Exception e) {
					e.printStackTrace();
					return null;
				}finally{
					sqlSession.close();
				}
	}
	public Etp_Exam_Info selectExam(int exam_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
			try {
				return sqlSession.getMapper(Etp_Exam_Mapper.class).selectExam(exam_no);
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
	}
	public void updateExam(Etp_Exam_Info examInfo){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re=-1;
		try {
			re = sqlSession.getMapper(Etp_Exam_Mapper.class).updateExam(examInfo);
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
	}
	public void deleteExam(int exam_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re=0;
		try {
			re=sqlSession.getMapper(Etp_Exam_Mapper.class).deleteExam(exam_no);
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
	}
}
