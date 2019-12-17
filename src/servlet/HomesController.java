package servlet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.websocket.server.PathParam;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import bean.HomesDao;
import bean.HomesVo;

@RestController
@RequestMapping("/homes")
public class HomesController {
	
	HomesDao dao;
	
	String findStr = "";
	
	public HomesController() {
		this.dao = new HomesDao();
	}

	@RequestMapping("/list")
	public ModelAndView homesList() {
		ModelAndView mv = new ModelAndView();
		
		List<HomesVo> list = dao.goHomes(findStr);
		List<HomesVo> bestTop = new ArrayList<HomesVo>();
		
		mv.addObject("list", list);
		mv.addObject("list_size", list.size());
		
		for(int i = 0; i < 3; i++) {
			bestTop.add(list.get(i));
		}
		
		mv.addObject("best_list", bestTop);
		
		mv.setViewName("homes/homes_list");
		return mv;
	}
	
	@RequestMapping(value="/search")
	public ModelAndView goSearch(String findStr) {
		ModelAndView mv = new ModelAndView();
		List<HomesVo> list = dao.goHomes(findStr);
		
		System.out.println(findStr + " //재욱이 보고싶다앙");
		
		Map<String, Object> model = new HashMap<String, Object>();
		
		model.put("list", list);
		model.put("list_size", list.size());
		mv.setViewName("homes/search_list");
		return mv;
	}
	
	@RequestMapping(value="/search/{serial}")
	public ModelAndView searchone(@PathVariable("serial") String serial ) {
		ModelAndView mv = new ModelAndView();
		HomesVo vo = dao.select(serial);
		
		return mv;
	}
}
