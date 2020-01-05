package servlet;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import bean.HostDao;
import bean.KakaoAPI;
import bean.UserVo;

@RestController
@RequestMapping("/host")
public class HostController {

	HostDao dao;

	public HostController() {
		dao = new HostDao();
	}
	
	@RequestMapping("/become-a-host")
	public ModelAndView become_a_host() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("host/become_a_host/type");
		return mav;
	}
	
	
	/*
	@RequestMapping("/login/kakao")
	public void kakaologin(@RequestParam("code")String code, HttpServletResponse resp, HttpSession session) {
		KakaoAPI kakao = new KakaoAPI();
		String access_Token = kakao.getAccessToken(code);
		UserVo vo= kakao.getUserInfo(access_Token);
		String p_image = dao.sns_login(vo);
		
		session.setAttribute("mEmail", vo.getmEmail());
		session.setAttribute("p_img", p_image);
		session.setAttribute("kakao_token", access_Token);
		PrintWriter out = null;
		try {
			out = resp.getWriter();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		out.print("<script type='text/javascript'>location.href='http://localhost:9999/YOGI_J/homes/list';</script>");
		out.flush();
	}
	
	@RequestMapping("/email")
	public void emailSignup(UserVo vo, HttpServletResponse resp, HttpSession session) {
		//이메일 회원가입
		boolean b = false;
		PrintWriter out = null;
		b = dao.email_signup(vo);
		try {
			resp.setContentType("text/html;charset=utf-8");
			out = resp.getWriter();
		}catch(Exception ex) {}
		if(b) {
			//중복 이메일이 없을 경우
			//TODO 회원가입시 Ajax로 확인해야
			session.setAttribute("mEmail", vo.getmEmail());
			out.print("<script type='text/javascript'>alert('회원가입이 완료되었습니다.'); location.href='http://localhost:9999/YOGI_J/homes/list';</script>");
			out.flush();
		}else {
			out.print("<script type='text/javascript'>alert('이미 사용중인 아이디 입니다.'); location.hrf='http://localhost:9999/YOGI_J/index.jsp'</script>");
			out.flush();			
		}
	}
	
	@RequestMapping("/login/email")
	public void signin(UserVo vo, HttpSession session, HttpServletResponse resp) {
		UserVo result = new UserVo();
		result = dao.signin(vo);
		PrintWriter out = null;
		try {
			resp.setContentType("text/html;charset=utf-8");
			out = resp.getWriter();
		}catch(Exception ex) {}
		if(result != null) {
			session.setAttribute("mEmail", result.getmEmail());
			session.setAttribute("mPhoto", result.getmPhoto());
			out.print("<script type='text/javascript'>location.href='http://localhost:9999/YOGI_J/homes/list';</script>");
			out.flush();
		}else {
			out.print("<script type='text/javascript'>alert('일치하는 회원정보가 없습니다.'); location.href='http://localhost:9999/YOGI_J/index.jsp';</script>");
			out.flush();
		}
	}*/
}
