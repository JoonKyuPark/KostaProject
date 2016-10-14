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
			System.out.println(list.get(0).hire_type);
		} catch (Exception e) {
			e.printStackTrace();
		} /*finally {
			System.out.println(list.get(0).hire_type+"1");
			sqlSession.close();
			System.out.println(list.get(0).hire_type+"2");
		}*/
		
		System.out.println("Dddd2"+list.get(0).hire_type);
		System.out.println("Dddd3");
		return list;
	}


}
