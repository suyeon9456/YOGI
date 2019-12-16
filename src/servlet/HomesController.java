package servlet;

import java.util.ArrayList;
import java.util.List;

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
}
