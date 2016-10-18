package kosta.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.SqlSessionManager;

public class SessionFactory 
{
		private SqlSessionFactory sessionFactory;
	
		public SessionFactory()
		{
			//mybatis파일의 이름을 정의해둔다.
			String resource = "mybatis-config.xml";
			//inputStream객체를 생성한다.
			InputStream input = null;
			try 
			{
				input = Resources.getResourceAsStream(resource);
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		
			sessionFactory = new SqlSessionFactoryBuilder().build(input);
		}
		public SqlSessionFactory getInstance()
		{	
			return this.sessionFactory;
		}
}//end class
