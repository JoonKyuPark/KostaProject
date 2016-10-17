package member.model;

import java.io.InputStream;
import java.util.List;




import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
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

	
	
	
	public List<Etp> selectEtp(int gno,int startRow){
			
			List<Etp> list = null;
			
			int page_size = ETP_Exam_Service.getPageSize();
			
			SqlSession session = getSqlSessionFactory().openSession();
			try{
				list =  session.getMapper(ResumeMapper.class).Etpselect(new RowBounds(startRow,page_size),gno);
			}catch(Exception e){
				
			}finally{
				session.close();
			}
			return list;
				
			
	}
	
	
	
	
	public int getGno(int gid2){
		SqlSession session = getSqlSessionFactory().openSession();
		
		int num=0;
					
		try {
			num = session.getMapper(ResumeMapper.class).selectGno(gid2);
		} catch (Exception e) {
			e.getMessage();
		}finally{
			session.close();
		}
		
		
		return num;
	}
	
	public int selectlog_id(){
		int result = 0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		if(sqlSession.getMapper(ResumeMapper.class).selectlog_id() != null){
			try {
			
						
				result = sqlSession.getMapper(ResumeMapper.class).selectlog_id();
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				sqlSession.close();
			}
		}
		
		return result;
	}
	
	
	
	
	
	public int Insertmem_log(ETP_mem_log etp){
		int re = -1; 
		
		SqlSession sqlSession=getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(ResumeMapper.class).InsertEtp_log(etp);
			if(re > 0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			sqlSession.close();
		}
	
		return re;
	}
	
	
	public void deleted(int log){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re=0;
		System.out.println("dao");
		try{
			re= sqlSession.getMapper(ResumeMapper.class).deleted(log);
			System.out.println("dao 성공");
			if(re > 0){
				sqlSession.commit();
			}else{
				System.out.println("dao 실패");
				sqlSession.rollback();
			}
			
		}catch(Exception e){
			e.getMessage();
			
		}finally{
			sqlSession.close();
		}

	}
	

	
	
	
}
