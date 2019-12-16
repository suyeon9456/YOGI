package bean;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import MyBatis.MyBatisFactory;

public class HomesDao {
	
SqlSession sqlSession;
	
	public HomesDao() {
		try {
			sqlSession = MyBatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<HomesVo> goHomes(String findStr) {
		List<HomesVo> list = null;
		
		try {
			list = sqlSession.selectList("j.homes_search", findStr);
			
			for(int i = 0; i < list.size(); i++) {
				List<HFilesVo> photoList = sqlSession.selectList("j.homes_photo", list.get(i).hSerial);
				list.get(i).setFileList(photoList);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return list;
		}
	}
	

}
