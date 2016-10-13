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

}
