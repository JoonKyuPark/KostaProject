package recruit.infor;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import recruit.mapper.Recruit_infor_Mapper;

public class Recruit_infor_Dao {
	
	private static Recruit_infor_Dao riDao = new Recruit_infor_Dao();

	public static Recruit_infor_Dao getInstance() {
		return riDao;
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
	
	public List<Recruit_Infor> recruitList() {
		System.out.println("Dddd0");
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("Dddd99");
		List<Recruit_Infor> list=null;
		System.out.println("Dddd1");
		try {
			list= sqlSession.getMapper(Recruit_infor_Mapper.class).recruitList();
			System.out.println(list.get(0).etp_no);
		} catch (Exception e) {
			e.printStackTrace();
		} /*finally {
			sqlSession.close();
		}*/
		
		System.out.println("Dddd3");
		return list;
	}
	
	

	public Recruit_Infor deailRecruit(int id1){
		SqlSession sqlSession=getSqlSessionFactory().openSession();
		Recruit_Infor ri=null;
		try{
			System.out.println("dfdfdfseeeeeeeeee"+id1);
			ri= sqlSession.getMapper(Recruit_infor_Mapper.class).deailRecruit(id1);
			System.out.println("}}"+ri.getMax_pay());
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}/*finally {
			sqlSession.close();
		}*/
		System.out.println(ri.getMax_pay());
		return ri;
	}

	public List<Recruit_Infor> locRecruit(String location) {
		System.out.println("Dddd0");
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("Dddd99");
		List<Recruit_Infor> list=null;
		System.out.println("Dddd1");
		try {
			list= sqlSession.getMapper(Recruit_infor_Mapper.class).locRecruit(location);
			System.out.println("dfdfdfseeeeeeeeee"+list.get(0).etp_no);
		} catch (Exception e) {
			e.printStackTrace();
		} /*finally {
			sqlSession.close();
		}*/
		
		System.out.println("Dddd3");
		return list;
	}

}
