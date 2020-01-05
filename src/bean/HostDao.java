package bean;

import org.apache.ibatis.session.SqlSession;

import MyBatis.MyBatisFactory;

public class HostDao {

	SqlSession sqlSession;

	public HostDao() {
		try {
			sqlSession = MyBatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
