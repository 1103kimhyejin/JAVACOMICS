package webtoonInnerList.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import webtoonInnerList.bean.WebtoonInnerListDTO;
import webtoonInnerList.service.WebtoonInnerListService;

@Controller
@RequestMapping(value="/webtoonInnerList")
public class WebtoonInnerListController {

	@Autowired
	private WebtoonInnerListService webtoonInnerListService;
	
	@PostMapping(value="/getEpisode")
	@ResponseBody
	public WebtoonInnerListDTO episodeList(@RequestParam String title){
		System.out.println(title);
		return webtoonInnerListService.getEpisode(title);	
	}

//	@RequestMapping(value="episodeList", method=RequestMethod.POST)
//	public String modify(@RequestParam String title, Model model) {
//		webtoonInnerListService.episode(title);	
//		model.addAttribute("display", "/webtoonInnerList/episodeList");
//		return "/webtoonInnerList/webtoonInnerList";
//	}
	
//	@PostMapping(value="/getEpisode")
//	public String episodeList(@RequestParam String title,
//							  Model model){
//		
//		WebtoonInnerListDTO webtoonInnerListDTO = webtoonInnerListService.getEpisode(title);
//		model.addAttribute("webtoonInnerListDTO", webtoonInnerListDTO);
//		return "/webtoonInnerList/webtoonInnerList";
//		
//	}

//	@PostMapping(value="/episodeList")
//	public String episodeList(@RequestParam String title){
//		
//		//WebtoonInnerListDTO webtoonInnerListDTO = episodeList(title);
//		
//		return "/JAVACOMICS/webtoonInnerList/webtoonInnerList";
//		
//	}

}
