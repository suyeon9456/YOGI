package bean;

import org.apache.ibatis.session.SqlSession;

import MyBatis.MyBatisFactory;

public class UserDao {

	SqlSession sqlSession;
	
	public UserDao() {
		try {
			sqlSession = MyBatisFactory.getFactory().openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String sns_login(UserVo vo) {
		String profile_image = "";
		try {
			//회원가입과 로그인 동시에, 결과물은 사진링크
			profile_image = sqlSession.selectOne("user.check_user", vo.getmEmail());
			if(profile_image == null) {
				//회원이 아니었을시 회원 등록
				int i = sqlSession.insert("user.insert", vo);
				if(i>0) {
					profile_image = vo.getmPhoto();
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}
		}catch(Exception ex) {
			ex.printStackTrace();
			sqlSession.rollback();
		}finally {
			return profile_image;			
		}
	}
	
	public boolean email_signup(UserVo data) {
		boolean b = false;
		try {
			int i = sqlSession.insert("user.insert", data);
			if(i>0) {
				b = true;
				sqlSession.commit();
			}
		}catch(Exception ex) {
			ex.printStackTrace();
			sqlSession.rollback();
		}finally {
			return b;
		}
	}
	
	public UserVo signin(UserVo vo) {
		UserVo result = new UserVo();
		try {
			result = sqlSession.selectOne("user.signin", vo);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return result;
		}
	}
}
