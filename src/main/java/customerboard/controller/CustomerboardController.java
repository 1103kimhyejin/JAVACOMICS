package customerboard.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import customerboard.bean.CustomerBoardDTO;
import customerboard.bean.CustomerboardPaging;
import customerboard.service.CustomerboardService;

@Controller
@RequestMapping(value="customerboard")
public class CustomerboardController {
	@Autowired
	private CustomerboardService customerboardService;

	@RequestMapping(value="customerboardWriteForm", method=RequestMethod.GET)
	public String customerboardWriteForm(Model model) {
		model.addAttribute("hide", "o");
		model.addAttribute("fullscreenDisplay", "/supportService/supportWriteForm.jsp");
		return "/index";
	}
	
	@RequestMapping(value="customerboardList", method=RequestMethod.GET)
	public String customerboardList(@RequestParam(required=false, defaultValue="1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("hide", "o");
		model.addAttribute("fullscreenDisplay", "/supportService/supportService.jsp");
		
		return "/index";
	}
	@RequestMapping(value="getCustomerboardList", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getCustomerboardList(@RequestParam(required=false, defaultValue="1") String pg,
									 HttpSession session,
									 HttpServletResponse response) {
		System.out.println("controller 왔음");
		//1페이지당 5개씩
		List<CustomerBoardDTO> list = customerboardService.getCustomerboardList(pg);
		
		//세션
		String toonMemId = (String) session.getAttribute("toonMemId");
		
		//페이징 처리
		CustomerboardPaging customerboardPaging = customerboardService.customerboardPaging(pg);
		
		//조회수  - 새로고침 방지
		if(session.getAttribute("toonMemId") != null) {
			Cookie cookie = new Cookie("toonMemHit", "0"); //쿠키 생성
			cookie.setMaxAge(30*60);//초 단위
			response.addCookie(cookie);//클라이언트 보내기
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("toonMemId", toonMemId);
		mav.addObject("customerboardPaging", customerboardPaging);
		
		mav.setViewName("jsonView");
		return mav;
	}
	@RequestMapping(value="customerboardView", method=RequestMethod.GET)
	public String customerboardView(@RequestParam String seq,
							@RequestParam String pg,
							Model model) {
				
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("hide", "o");
		model.addAttribute("fullscreenDisplay", "/supportService/supportView.jsp");
		return "/index";
	}
	
	@RequestMapping(value="getCustomerboard", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView getCustomerboard(@RequestParam String seq, 
								 @CookieValue(value="memHit", required=false) Cookie cookie,
								 HttpSession session,
								 HttpServletResponse response) {
		
		//조회수  - 새로고침 방지
		/*
		if(cookie != null) {
			customerboardService.hitUpdate(seq); //조회수 증가
			cookie.setMaxAge(0); //쿠키 삭제
			response.addCookie(cookie);//클라이언트 보내기
		}	
		*/
		
		CustomerBoardDTO customerboardDTO = customerboardService.getCustomerboard(seq);
		
		//세션
		String toonMemId = (String) session.getAttribute("toonMemId");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("customerboardDTO", customerboardDTO);
		mav.addObject("toonMemId", toonMemId);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="customerboardWrite", method=RequestMethod.POST)
	@ResponseBody
	public void customerboardWrite(@RequestParam Map<String, String> map) {
		//원글 - 1페이지, 첫번째
		customerboardService.customerboardWrite(map);
	}
	
	@RequestMapping(value="boardModifyForm", method=RequestMethod.GET)
	public String boardModifyForm(@RequestParam String seq,
								  @RequestParam String pg,
								  Model model) {
		System.out.println("bodymodifyform 왔음");
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("hide", "o");
		model.addAttribute("fullscreenDisplay", "/supportService/supportModifyForm.jsp");
		return "/index";
	}
	
	@RequestMapping(value="boardModify", method=RequestMethod.POST)
	@ResponseBody
	public void modify(@RequestParam Map<String, Object> map) {
		customerboardService.boardModify(map);
	}
}
