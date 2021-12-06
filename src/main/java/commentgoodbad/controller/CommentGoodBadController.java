package commentgoodbad.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import commentgoodbad.bean.CommentGoodBadDTO;
import commentgoodbad.service.CommentGoodBadService;

@Controller
@RequestMapping(value = "/commentGoodBad")
public class CommentGoodBadController {
	@Autowired
	private CommentGoodBadService commentGoodBadService; 
	
	@RequestMapping(value="/commentGood", method=RequestMethod.POST)
	@ResponseBody
	public void commentGood(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		commentGoodBadService.commentGood(commentGoodBadDTO);
	}
	
	@RequestMapping(value="/commentBad", method=RequestMethod.POST)
	@ResponseBody
	public void commentBad(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		commentGoodBadService.commentBad(commentGoodBadDTO);
	}
	
	@RequestMapping(value="/checkGoodId", method=RequestMethod.POST)
	public @ResponseBody String checkGoodId(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO, HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		return commentGoodBadService.checkGoodId(commentGoodBadDTO);
	}
	
	@RequestMapping(value="/checkBadId", method=RequestMethod.POST)
	public @ResponseBody String checkBadId(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO, HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		return commentGoodBadService.checkBadId(commentGoodBadDTO);
	}
	
	@RequestMapping(value="/commentGoodDelete", method=RequestMethod.POST)
	@ResponseBody
	public void commentGoodDelete(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		commentGoodBadService.commentGoodDelete(commentGoodBadDTO);
	}
	
	@RequestMapping(value="/commentBadDelete", method=RequestMethod.POST)
	@ResponseBody
	public void commentBadDelete(int commentSeq, @ModelAttribute CommentGoodBadDTO commentGoodBadDTO
			,HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		commentGoodBadDTO.setCommentSeq(commentSeq);
		
		commentGoodBadService.commentBadDelete(commentGoodBadDTO);
	}

	@RequestMapping(value="/commentGoodBadCheck", method=RequestMethod.POST)
	@ResponseBody
	public List<CommentGoodBadDTO> commentGoodBadCheck(@ModelAttribute CommentGoodBadDTO commentGoodBadDTO, HttpSession session) {
		String id = (String) session.getAttribute("toonMemId");
		commentGoodBadDTO.setGoodBadId(id);
		
		return commentGoodBadService.commentGoodBadCheck(commentGoodBadDTO);
	}
	
}
