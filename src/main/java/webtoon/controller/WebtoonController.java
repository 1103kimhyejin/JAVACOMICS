package webtoon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@GetMapping(value="homebody")
	public String homebody(Model model){
		model.addAttribute("display", "main/webtoonList/homebody.jsp");
		return "/index";
	}
	
	@GetMapping(value="rankbody")
	public String rankbody(Model model){
		model.addAttribute("display", "main/webtoonList/rankbody.jsp");
		return "/index";
	}
}
