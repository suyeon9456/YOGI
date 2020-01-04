package bean;

import java.util.ArrayList;
import java.util.Calendar;
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
	
	public List<HomesVo> goHomes() {
		List<HomesVo> list = new ArrayList<HomesVo>();
		
		try {
			list = sqlSession.selectList("homes.homes_search");
			
			for(int i = 0; i < list.size(); i++) {
				List<HFilesVo> photoList = sqlSession.selectList("homes.homes_photo", list.get(i).hSerial);
				list.get(i).setFileList(photoList);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return list;
		}
	}
	
	public List<HomesVo> goSearch(SearchVo sVo){
		List<HomesVo> list = new ArrayList<HomesVo>();
		
		try {
			list = sqlSession.selectList("homes.homes_find", sVo);
			
			if(list.size() > 0) {
				for(int i = 0; i < list.size(); i++) {
					List<HFilesVo> photoList = sqlSession.selectList("homes.homes_photo", list.get(i).hSerial);
					list.get(i).setFileList(photoList);
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return list;
		}
	}
	


	public HomesVo select(String serial) {
		HomesVo vo = new HomesVo();
		int one = Integer.parseInt(serial);
		try {
			// 숙소 관련 정보
			vo = sqlSession.selectOne("homes.select", one);
			vo.setVo(sqlSession.selectOne("homes.details", one));
			// TODO 댓글에 각자의 사진 안 가져왔음
			vo.setCommentsList(sqlSession.selectList("homes.comment", one));
			// 호스트 정보
			vo.setHost(sqlSession.selectOne("homes.host", vo.gethEmail()));
			// 현재년도
			int year = Calendar.getInstance().get(Calendar.YEAR);
			String birth = vo.getHost().getmBirthday();
			int b_year = Integer.parseInt(birth.substring(0, 4));
			int age = (int) Math.floor((year - b_year)/10);
			vo.getHost().setmBirthday(age + "0대");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			return vo;
		}
	}
}
