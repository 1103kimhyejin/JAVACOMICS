package episodelist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import episodelist.bean.EpisodeListDTO;
import episodelist.service.EpisodeListService;

@Controller
@RequestMapping(value="episodeList")
public class EpisodeListController {
	@Autowired
	private EpisodeListService episodeListService;

	
	@PostMapping(value="getEpisodeListTable")
	@ResponseBody
	public List<EpisodeListDTO> getEpisodeListTable(@RequestParam String title){
		
		return episodeListService.getEpisodeListTable(title);
	
	}
	
	@PostMapping(value="/getEpisode")
	@ResponseBody
	public EpisodeListDTO getEpisode(@RequestParam int episodeCode){
		
		return episodeListService.getEpisode(episodeCode);
	
	}
	
	@PostMapping(value="lownumEpisodeCode")
	@ResponseBody
	public List<EpisodeListDTO> lownumEpisodeCode(@RequestParam String title){
		
		return episodeListService.lownumEpisodeCode(title);
	
	}
}
