package controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.HostingDao;

@Controller
public class SearchController {
	@Autowired
	HostingDao hDao;

	@RequestMapping("/search/search")
	public ModelAndView search(@RequestParam HashMap map){
		String target = (String)map.get("target");
		String sdate = (String)map.get("sdate");
		String edate = (String)map.get("edate");
		String cnt = (String)map.get("cnt");
		
		System.out.println(target);
		System.out.println(sdate);
		System.out.println(edate);
		System.out.println(cnt);
		
		List<HashMap> list = hDao.searchList(map);
			HashMap mapp = (HashMap)list.get(0);
			System.out.println(mapp);
			
		
		
		
		ModelAndView mav = new ModelAndView("m_index2");
		mav.addObject("main", "search/searchList");
		mav.addObject("val", mapp);
		mav.addObject("map", map);
		return mav;
	}
}
