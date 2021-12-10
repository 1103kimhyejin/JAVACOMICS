package webtoon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import webtoon.bean.WebtoonDTO;
import webtoon.service.WebtoonService;

@Controller
@RequestMapping(value="webtoon")
public class WebtoonController {
	
	@Autowired
	private WebtoonService webtoonService;
	
	
	@PostMapping(value="getHomeBodyList")
	@ResponseBody
	public List<WebtoonDTO> getHomeBodyList(){
		return webtoonService.getHomeBodyList();
	}
	
	@PostMapping(value="getRankBodyList")
	@ResponseBody
	public List<WebtoonDTO> getRankBodyList(@RequestParam String category ){
		return webtoonService.getRankBodyList(category);
	}
	
	@PostMapping(value="getStorageBodyList")
	@ResponseBody
	public JSONObject getStorageBodyList(@RequestParam String id){
		return webtoonService.getStorageBodyList(id);
	}
	
	@PostMapping(value="getStorageBodybottom")
	@ResponseBody
	public List<WebtoonDTO> getStorageBodybottom(@RequestParam String title){
		System.out.println(title);
		return webtoonService.getStorageBodybottom(title);
		
	}
	@PostMapping(value="updateRecent")
	@ResponseBody
	public void updateRecent(@RequestParam int episodeCode, HttpSession session){
		System.out.println(episodeCode);
		webtoonService.updateRecent(episodeCode, session.getAttribute("toonMemId")+"");
		
	}
	
	@PostMapping(value="homeEndBody")
	@ResponseBody
	public List<WebtoonDTO> homeEndBody(@RequestParam String end ){
		return webtoonService.homeEndBody(end);
	}
	
	
	
	
	
	
	
	@RequestMapping(value="homeendbody", method=RequestMethod.GET)
	public String homeendbody(Model model) {
		model.addAttribute("display","main/webtoonList/homeendbody.jsp");
		return "/index";
	}
	
	@RequestMapping(value="homebody", method=RequestMethod.GET)
	public String homebody(Model model) {
		model.addAttribute("display","main/webtoonList/homebody.jsp");
		return "/index";
	}
	
	@RequestMapping(value="rankbody", method=RequestMethod.GET)
	public String rankbody(Model model) {
		model.addAttribute("display","main/webtoonList/rankbody.jsp");
		return "/index";
	}
	
	@RequestMapping(value="storagebody", method=RequestMethod.GET)
	public String storagebody(Model model) {
		model.addAttribute("display","main/webtoonList/storagebody.jsp");
		return "/index";
	}
	
	@RequestMapping(value="mainpage", method=RequestMethod.GET)
	public String mainpage(Model model) {
		model.addAttribute("display","main/body.jsp");
		return "/index";
	}
}
