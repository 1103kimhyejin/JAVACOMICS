package webtoonInnerList.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;
import webtoonInnerList.service.WebtoonInnerListService;

@Controller
@RequestMapping(value="/webtoonInnerList")
public class WebtoonInnerListController {

	@Autowired
	private WebtoonInnerListService webtoonInnerListService;
	
	@PostMapping(value="/getEpisode")
	@ResponseBody
	public WebtoonInnerListDTO getEpisode(@RequestParam String title){
		System.out.println(title);
		return webtoonInnerListService.getEpisode(title);	
	}

	@PostMapping(value="/episodeList")
	@ResponseBody
	public List<EpisodeListDTO> episodeList(@RequestParam String title) {
		System.out.println("컨트롤러와따");
		/* List<EpisodeListDTO> list = webtoonInnerListService.episodeList(title); */
		/* model.addAttribute("list", list); */
		/* model.addAttribute("display", "/webtoonInnerList/episode.jsp"); */
		return webtoonInnerListService.episodeList(title);
	}
	
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
