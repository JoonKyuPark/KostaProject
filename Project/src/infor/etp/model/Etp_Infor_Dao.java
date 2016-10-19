package infor.etp.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import infor.etp.mapper.Etp_Infor_Mapper;
import recruit.infor.Recruit_Infor;
import recruit.mapper.Recruit_infor_Mapper;

public class Etp_Infor_Dao {

	public static Etp_Infor_Dao eid = new Etp_Infor_Dao();

	public static Etp_Infor_Dao getInstance() {
		return eid;
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

	public Etp_Infor detailEtp(int id1) {
		SqlSession sqlSession=getSqlSessionFactory().openSession();
		Etp_Infor ri=null;
		try{
			ri= sqlSession.getMapper(Etp_Infor_Mapper.class).detailEtp(id1);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return ri;
	}


}
