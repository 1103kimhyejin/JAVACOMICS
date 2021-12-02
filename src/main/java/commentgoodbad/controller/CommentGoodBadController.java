package commentgoodbad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import commentgoodbad.service.CommentGoodBadService;

@Controller
@RequestMapping(value = "/commentGoodBad")
public class CommentGoodBadController {
	@Autowired
	private CommentGoodBadService commentGoodBadService; 
	
	@RequestMapping(value="/commentGood", method=RequestMethod.POST)
	@ResponseBody
	public void commentGood(int commentSeq) {
		commentGoodBadService.commentGood(commentSeq);
	}
	
}
