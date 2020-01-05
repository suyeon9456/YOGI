package servlet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import bean.DetailsVo;
import bean.HomesDao;
import bean.HomesVo;
import bean.SearchVo;

@RestController
@RequestMapping("/homes")
public class HomesController {
	
	HomesDao dao;
	
	public HomesController() {
		this.dao = new HomesDao();
	}

	@RequestMapping("/list")
	public ModelAndView homesList() {
		ModelAndView mv = new ModelAndView();
		
		List<HomesVo> list = dao.goHomes();
		List<HomesVo> bestTop = new ArrayList<HomesVo>();
		List<Integer> price = new ArrayList<Integer>();
		
		int sumPirce = 0;
		for(int i = 0; i < list.size(); i++) {
			price.add(list.get(i).gethPrice());
			sumPirce += list.get(i).gethPrice();
		}
		
		float avgPrice = sumPirce/price.size();
		int minPrice = Collections.min(price);
		int maxPrice = Collections.max(price);
		
		mv.addObject("list", list);
		mv.addObject("list_size", list.size());
		mv.addObject("minPrice",minPrice);
		mv.addObject("maxPrice",maxPrice);
		mv.addObject("avgPrice",avgPrice);
		
		for(int i = 0; i < 3; i++) {
			bestTop.add(list.get(i));
		}
		
		mv.addObject("best_list", bestTop);
		
		mv.setViewName("homes/homes_list");
		return mv;
	}
	
	@RequestMapping(value="/search")
	public ModelAndView goSearch(SearchVo sVo) {
		ModelAndView mv = new ModelAndView();
		
		List<HomesVo> list = dao.goSearch(sVo);
		List<Integer> price = new ArrayList<Integer>();
		
		List<HomesVo> listOri = dao.goHomes();
		List<HomesVo> list = dao.goSearch(sVo);
		List<Integer> price = new ArrayList<Integer>();
		
		int sumPirce = 0;
		for(int i = 0; i < listOri.size(); i++) {
			price.add(listOri.get(i).gethPrice());
			sumPirce += listOri.get(i).gethPrice();
		}
		
		float avgPrice = sumPirce/price.size();
		int minPrice = Collections.min(price);
		int maxPrice = Collections.max(price);
		
		if(list.size() > 0) {	
			mv.addObject("list",list);
			mv.addObject("list_size", list.size());
			mv.addObject("minPrice",minPrice);
			mv.addObject("maxPrice",maxPrice);
			mv.addObject("avgPrice",avgPrice);
			
			mv.setViewName("homes/search_list");			
		}else {
			mv.setViewName("homes/search_null");
		}
		
		return mv;
		
	}
	
	@RequestMapping(value="/search/{serial}")	
	public ModelAndView searchone(@PathVariable("serial") String serial ) {	
		ModelAndView mv = new ModelAndView();	
		HomesVo vo = dao.select(serial);	
		mv.setViewName("homes/home_details");
		mv.addObject("data", vo);
		return mv;			
	}
}
