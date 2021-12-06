package menu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="menu")
public class MenuController {
	@RequestMapping(value="backmenu", method=RequestMethod.GET)
	public String backmenu(Model model) {
		model.addAttribute("hide","o");
		return "/index";
	}
}
