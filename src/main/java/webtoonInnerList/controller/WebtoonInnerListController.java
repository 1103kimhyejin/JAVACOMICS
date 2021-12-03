package webtoonInnerList.controller;

import java.util.List;

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
	
	
//	@PostMapping(value="/episodeList")
//	@ResponseBody
//	public WebtoonInnerListDTO episodeList(@RequestParam String title){
//		System.out.println(title);
//		return webtoonInnerListService.episodeList(title);
//		
//	}

	@PostMapping(value="/episodeList")
	public String episodeList(@RequestParam String title){
		
		//WebtoonInnerListDTO webtoonInnerListDTO = episodeList(title);
		
		return "/JAVACOMICS/webtoonInnerList/webtoonInnerList";
		
	}
}
