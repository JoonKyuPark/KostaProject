package job.main;

import java.io.InputStream;
import java.util.List;

import job.main.mapper.MainMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDao {

	private static MemberDao dao = new MemberDao();

	public static MemberDao getInstance() {
		return dao;
	}

	public MemberDao() {

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

	public int insertPMember(Member_info member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		System.out.println(member.toString());
		try {
			re = sqlSession.getMapper(MainMapper.class).Minsert(member);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return re;
		} catch (Exception e) {
			e.printStackTrace();
			return re;
		} finally {
			sqlSession.close();
		}
	}

	public int insertEtpMember(Etp_infor etp) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(MainMapper.class).Einsert(etp);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return re;
		} catch (Exception e) {
			e.printStackTrace();
			return re;
		} finally {
			sqlSession.close();
		}
	}
	
	public int mIdCount(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
         int re=0;
		try {
			re= sqlSession.getMapper(MainMapper.class).Mcount();
		
			return re;
		} catch (Exception e) {
			e.printStackTrace();
			return re;
		} finally {
			sqlSession.close();
		}
	}
	public List<Member_info> Mlist(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Member_info> list=null;
		try {
			list= sqlSession.getMapper(MainMapper.class).Mlist();
		
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			sqlSession.close();
		}
	}
	
	public int Mupdate(Member_info m){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			
			re = sqlSession.getMapper(MainMapper.class).Mupdate(m);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			return re;
		} catch (Exception e) {
			e.printStackTrace();
			return re;
		} finally {
			sqlSession.close();
		}
		
	}
	
	public int Mcount(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re =-1;
		try {
			re= sqlSession.getMapper(MainMapper.class).Mcount();
			sqlSession.commit();
			return re;
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			return re;
		} finally {
			sqlSession.close();
		}
	}
	
	public Member_info Msearch (int loginId){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Member_info m=null;
		try {
			m= sqlSession.getMapper(MainMapper.class).Msearch(loginId);
			return m;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			sqlSession.close();
		}
	}
	
	public List<Etp_infor> Elist(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Etp_infor> list=null;
		try {
			list= sqlSession.getMapper(MainMapper.class).Elist();
		
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			sqlSession.close();
		}
	}

}
