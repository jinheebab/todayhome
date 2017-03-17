package controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.HostingDao;

@Controller
@RequestMapping("/hosting")
public class HostingController {
	
	@Autowired
	HostingDao hdao;
	
	@RequestMapping("/host01")
	public ModelAndView host01(HttpServletRequest request, HttpSession session){	// 컨트롤러  7 - 1번
		
		ModelAndView mav = new ModelAndView();
		
//		if(session.getAttribute("auth") == null){
//			mav.addObject("main","login/pagelogin");
//			
//			mav.setViewName("g_index");
//		}
		
		//String id = (String)session.getAttribute("id");
		
		//mav.addObject("id",id);
				
		mav.addObject("main", "hosting/host01");
		
		mav.setViewName("m_index2");
		
		return mav;
								
	}
	
	@RequestMapping("/host02")
	@ResponseBody
	public String host02(@RequestParam ("city") String city){
		
		System.out.println(city);
		
		
		Map param = new HashMap<>();
		
		param.put("city", city);
		
		
		Map map = hdao.getPrice(param);
		
		System.out.println(map.toString());
		
		BigDecimal price = (BigDecimal)map.get("PRICE");
		
		System.out.println("price는"+price);		
		
		return price.toString();
	}
	
	
	@RequestMapping("/upload")
	@ResponseBody
	public String upload(@RequestParam(name="item") MultipartFile file){
		
		Map map = fuSrv.execute(file);
		
		param.putAll(map);
		
		System.out.println();
		int rst = sdao.createOne(param);
		
		if(rst == 1)
			return new ModelAndView("redirect:/share/list");
		else {
			ModelAndView mav = new ModelAndView("share/error");
				mav.addObject("err", "업로드 처리중에 문제가 발생하였습니다");
				mav.addObject("dest", "/share/form");
			return mav;
		}
	}
	
	
	
	
	
	@RequestMapping("/host03")
	@ResponseBody
	public String host03(@RequestParam Map map){
		
		
		int n = hdao.addHosting(map);
		
		if(n == 1){
			return "등록 성공!";
		}else{
			return "등록 실패!";
		}
		
	}
	
	
}
