package toonmember.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import toonmember.bean.ToonMemberDTO;
import toonmember.service.ToonMemberService;

@Controller
@RequestMapping(value="toonmember")
public class ToonMemberController {
	@Autowired
	private ToonMemberService toonMemberService;
	
	
	@RequestMapping(value="memberWriteForm", method=RequestMethod.GET)
	public String memberWriteForm(Model model) {
		model.addAttribute("fullscreenDisplay","member/memberWriteForm.jsp");
		model.addAttribute("hide","o");
		return "/index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam Map<String, String> map, HttpSession session) {
		//System.out.println("toonMemberlogin");
		return toonMemberService.login(map, session);
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();//무효화
		return "/index";
	}
	
	@RequestMapping(value="cashcheck", method=RequestMethod.GET)
	@ResponseBody
	public String cashcheck(Model model, @RequestParam String id) {
		return toonMemberService.cashcheck(id);		
	}
	
	@RequestMapping(value="toonMemberWrite", method=RequestMethod.POST)
	@ResponseBody
	public void toonMemberWrite(@ModelAttribute ToonMemberDTO toonMemberDTO) {
		System.out.println("toonMemberWrite");
		toonMemberService.toonMemberWrite(toonMemberDTO);
	}
	
	@RequestMapping(value="kakaoMemberWrite", method=RequestMethod.POST)
	@ResponseBody
	public void kakaoMemberWrite(@RequestParam Map<String, String> map, HttpSession session) {
		//System.out.println("kakaoMemberWrite");
		toonMemberService.kakaoMemberWrite(map, session);
	}
	
	@RequestMapping(value="checkId", method=RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam String id) {
		//System.out.println("toonMemberCheckId");
		return toonMemberService.checkId(id);
	}
	
	@RequestMapping(value="memberMenu", method=RequestMethod.GET)
	public String memberMenu(Model model) {
		model.addAttribute("fullscreenDisplay","main/memberMenu/memberMenu.jsp");
		model.addAttribute("hide","o");
		return "/index";
	}
	
	@RequestMapping(value="memberModifyForm", method=RequestMethod.GET)
	public String memberModifyForm(Model model) {
		model.addAttribute("fullscreenDisplay","main/memberMenu/memberModifyForm.jsp");
		model.addAttribute("hide","o");
		return "/index";
	}
	
	@RequestMapping(value="memberInfo", method=RequestMethod.POST)
	public @ResponseBody ToonMemberDTO memberInfo(@RequestParam String id) {
		//System.out.println("toonMemberCheckId");
		return toonMemberService.memberInfo(id);
	}
	
	@RequestMapping(value="toonMemberModify", method=RequestMethod.POST)
	@ResponseBody
	public void toonMemberModify(@ModelAttribute ToonMemberDTO toonMemberDTO, HttpSession session) {
		//System.out.println("toonMemberWrite");
		toonMemberService.toonMemberModify(toonMemberDTO, session);
	}
	
	@RequestMapping(value="memberDelete", method=RequestMethod.GET)
	@ResponseBody
	public void memberDelete(@RequestParam String id, HttpSession session) {
		//System.out.println("toonMemberCheckId");
		toonMemberService.memberDelete(id);
		session.invalidate();//무효화
	}

}
