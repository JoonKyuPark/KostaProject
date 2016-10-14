package recruit.clip;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import recruit.clip.mapper.Recruit_Clip_Mapper;
import recruit.infor.Recruit_infor_Dao;
import recruit.mapper.Recruit_infor_Mapper;

public class Recruit_Clip_Dao {

	private static Recruit_Clip_Dao rcDao = new Recruit_Clip_Dao();

	public static Recruit_Clip_Dao getInstance() {
		return rcDao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		System.out.println("ggrr");
		
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream(resource);
			System.out.println("ggrr1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("ggrr3");

		return new SqlSessionFactoryBuilder().build(input);
	}
	
	public int insertRecruitLike(int id) {
		System.out.println("Dddd0");
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("Dddd99 "+id);
		int re=-1;
		System.out.println("Dddd1");
		try {
			re= sqlSession.getMapper(Recruit_Clip_Mapper.class).insertRecruitLike(id);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			
			System.out.println("gggggggggggggggggggg"+re);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		System.out.println("Dddd3"+re);
		return re;
	}
}
