package servlet;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import bean.HomesDao;
import bean.HomesVo;

@RestController
@RequestMapping("/homes")
public class HomesController {
	
	HomesDao dao;
	
	public HomesController() {
		this.dao = new HomesDao();
	}

	@RequestMapping("/list")
	public ModelAndView homesList(String findStr) {
		ModelAndView mv = new ModelAndView();
		
		findStr = "";
		
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
		System.out.println(findStr + "재욱이 보고싶다앙");
		
		List<HomesVo> list = dao.goHomes(findStr);
		
		System.out.println(list.size() + "size");
		
		
		mv.addObject("list",list);
		mv.addObject("list_size", list.size());
		
		mv.setViewName("homes/search_list");
		
		return mv;
		
	}
}
