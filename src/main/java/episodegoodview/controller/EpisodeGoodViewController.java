package episodegoodview.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import episodegoodview.bean.EpisodeGoodViewDTO;
import episodegoodview.service.EpisodeGoodViewService;


@Controller
@RequestMapping(value = "episodeGoodView")
public class EpisodeGoodViewController {
	
	@Autowired
	private EpisodeGoodViewService episodeGoodViewService; 

	
	@RequestMapping(value="episodeGood", method=RequestMethod.POST)
	@ResponseBody
	public void episodeGood(@RequestParam String episodeCode, @RequestParam String title, @ModelAttribute EpisodeGoodViewDTO episodeGoodViewDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		episodeGoodViewDTO.setId(id);
		episodeGoodViewDTO.setEpisodeCode(Integer.parseInt(episodeCode));
		//episodeGoodViewDTO.setTitle(title);
		
		episodeGoodViewService.episodeGood(episodeGoodViewDTO);
	}
	

	@RequestMapping(value="episodeGoodDelete", method=RequestMethod.POST)
	@ResponseBody
	public void episodeGoodDelete(@RequestParam String episodeCode, @ModelAttribute EpisodeGoodViewDTO episodeGoodViewDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		episodeGoodViewDTO.setId(id);
		episodeGoodViewDTO.setEpisodeCode(Integer.parseInt(episodeCode));
		
		episodeGoodViewService.episodeGoodDelete(episodeGoodViewDTO);
	}

	@RequestMapping(value="episodeGoodCheckId", method=RequestMethod.POST)
	public @ResponseBody String episodeGoodCheckId(@RequestParam String episodeCode, @ModelAttribute EpisodeGoodViewDTO episodeGoodViewDTO, HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		episodeGoodViewDTO.setId(id);
		episodeGoodViewDTO.setEpisodeCode(Integer.parseInt(episodeCode));
		return episodeGoodViewService.episodeGoodCheckId(episodeGoodViewDTO);
	}
	
	@PostMapping(value="goodCount")
	@ResponseBody
	public int goodCount(@RequestParam String episodeCode){
		int episodecode=Integer.parseInt(episodeCode);
		return episodeGoodViewService.goodCount(episodecode);
	}
	
	/*
	 * @RequestMapping(value="episodeView", method=RequestMethod.POST)
	 * 
	 * @ResponseBody public void episodeView(@RequestParam String
	 * episodeCode, @RequestParam String title, @ModelAttribute EpisodeGoodViewDTO
	 * episodeGoodViewDTO ,HttpSession session, HttpServletResponse response,
	 * HttpServletRequest request) { String id = (String)
	 * session.getAttribute("toonMemId"); if(session.getAttribute("toonMemId")
	 * ==null);
	 * 
	 * //episodeGoodViewDTO.setId(id); Cookie[] cookies = request.getCookies();
	 * 
	 * // 비교하기 위해 새로운 쿠키 Cookie viewCookie = null;
	 * 
	 * 
	 * episodeGoodViewDTO.setEpisodeCode(Integer.parseInt(episodeCode));
	 * //episodeGoodViewDTO.setTitle(title);
	 * 
	 * episodeGoodViewService.episodeGood(episodeGoodViewDTO); }
	 */
}
