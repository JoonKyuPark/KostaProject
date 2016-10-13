package job.main;

import java.io.InputStream;

import job.main.mapper.MainMapper;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDao {

private static MemberDao dao= new MemberDao();

public static MemberDao getInstance(){
	return dao;
}

public MemberDao(){
	
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

public int insertPMember(PMember pMember){
	SqlSession sqlSession= getSqlSessionFactory().openSession();
	int re = -1;
	try {
		sqlSession.getMapper(MainMapper.class).PMinsert(pMember);
		return -1;
	} catch (Exception e) {
		e.printStackTrace();
		return -1;
	}
}
	
}
