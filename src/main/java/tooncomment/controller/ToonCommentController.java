package tooncomment.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tooncomment.bean.ToonCommentDTO;
import tooncomment.service.ToonCommentService;

@Controller
@RequestMapping(value = "tooncomment")
public class ToonCommentController {
	@Autowired
	private ToonCommentService toonCommentService;

	@RequestMapping(value = "toonCommentWrite", method = RequestMethod.POST)
	@ResponseBody
	public void toonCommentWrite(@ModelAttribute ToonCommentDTO toonCommentDTO, @RequestParam String episodeCode,
			HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		toonCommentDTO.setId(id);
		toonCommentDTO.setEpisodeCode(Integer.parseInt(episodeCode));
		toonCommentService.toonCommentWrite(toonCommentDTO);
	}

	@PostMapping(value = "getToonCommentList")
	@ResponseBody
	public List<ToonCommentDTO> getToonCommentList(@RequestParam String episodeCode) {
		int episodecode = Integer.parseInt(episodeCode);
		return toonCommentService.getToonCommentList(episodecode);
	}

	@PostMapping(value = "sortLatest")
	@ResponseBody
	public List<ToonCommentDTO> sortLatest(@RequestParam String episodeCode) {
		int episodecode = Integer.parseInt(episodeCode);
		return toonCommentService.sortLatest(episodecode);
	}

	@PostMapping(value = "getCommentGood")
	@ResponseBody
	public ToonCommentDTO getCommentGood(@RequestParam int commentSeq) {
		return toonCommentService.getCommentGood(commentSeq);
	}

	@PostMapping(value = "getToonCommentCount")
	@ResponseBody
	public int getToonCommentCount(@RequestParam String episodeCode) {
		int episodecode = Integer.parseInt(episodeCode);
		return toonCommentService.getToonCommentCount(episodecode);
	}

	@PostMapping(value = "commentCheckId")
	@ResponseBody
	public List<ToonCommentDTO> commentCheckId(@RequestParam String episodeCode,
			@ModelAttribute ToonCommentDTO toonCommentDTO, HttpSession session) {
		int episodecode = Integer.parseInt(episodeCode);
		String id = (String) session.getAttribute("toonMemId");
		toonCommentDTO.setId(id);
		return toonCommentService.commentCheckId(toonCommentDTO);
	}

	@PostMapping(value = "commentDelete")
	@ResponseBody
	public void commentDelete(@RequestParam int commentSeq) {
		toonCommentService.commentDelete(commentSeq);
	}

	@RequestMapping(value="toonCommentReplyWrite", method=RequestMethod.POST)
	@ResponseBody public void toonCommentReplyWrite(@ModelAttribute ToonCommentDTO toonCommentDTO,
													@RequestParam String episodeCode, 
													HttpSession session,
													String content,
													int ref, int lev, int step, int pseq){ 
		String id = (String) session.getAttribute("toonMemId");
		toonCommentDTO.setId(id);
		toonCommentDTO.setEpisodeCode(Integer.parseInt(episodeCode));
		toonCommentService.toonCommentReplyWrite(toonCommentDTO); 
	}
 
	@PostMapping(value = "getPcomment")
	@ResponseBody
	public ToonCommentDTO getPcomment(@RequestParam int commentSeq) {
		return toonCommentService.getPcomment(commentSeq);
	}
	
	@PostMapping(value = "getToonCommentReplyList")
	@ResponseBody
	public List<ToonCommentDTO> getToonCommentReplyList (@RequestParam int ref) {
		return toonCommentService.getToonCommentReplyList(ref);
	}

	@PostMapping(value = "replytotal")
	@ResponseBody
	public ToonCommentDTO replytotal (@RequestParam int commentSeq) {
		return toonCommentService.replytotal(commentSeq);
	}

	@PostMapping(value = "replyDelete")
	@ResponseBody
	public void replyDelete(@RequestParam int commentSeq, int pseq, @ModelAttribute ToonCommentDTO toonCommentDTO) {
		toonCommentService.replyDelete(toonCommentDTO);
	}
}
