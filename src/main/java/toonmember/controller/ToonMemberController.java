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
		return toonMemberService.login(map, session);
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();//무효화
		return "/index";
	}
	
	@RequestMapping(value="toonMemberWrite", method=RequestMethod.POST)
	@ResponseBody
	public void toonMemberWrite(@ModelAttribute ToonMemberDTO toonMemberDTO) {
		//System.out.println("aaa");
		toonMemberService.toonMemberWrite(toonMemberDTO);
	}
	
	@RequestMapping(value="checkId", method=RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam String id) {
		return toonMemberService.checkId(id);
	}

}
