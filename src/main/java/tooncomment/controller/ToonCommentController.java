package tooncomment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tooncomment.bean.ToonCommentDTO;
import tooncomment.service.ToonCommentService;

@Controller
@RequestMapping(value = "/tooncomment")
public class ToonCommentController {
	@Autowired
	private ToonCommentService toonCommentService; 
	
	@RequestMapping(value="/toonCommentWrite", method=RequestMethod.POST)
	@ResponseBody
	public void toonCommentWrite(@ModelAttribute ToonCommentDTO toonCommentDTO) {
		toonCommentService.toonCommentWrite(toonCommentDTO);
		
	}
}
