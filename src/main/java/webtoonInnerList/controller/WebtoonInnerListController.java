package webtoonInnerList.controller;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cashlist.bean.CashListDTO;
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
		return webtoonInnerListService.episodeList(title);
	}

	@RequestMapping(value="webtoonExplain", method=RequestMethod.GET)
	public String webtoonExplain(@RequestParam String title, Model model){
		System.out.println("display 컨트롤러와따");
		System.out.println(title);
		model.addAttribute("title", title);
		model.addAttribute("display", "webtoonExplain.jsp");
		return "/webtoonInnerList/webtoonInnerList";
	}
	
	@RequestMapping(value="webtoonPay", method=RequestMethod.GET)
	public String webtoonPay(@RequestParam String id, Model model){
		System.out.println("webtoonPay 컨트롤러와따");
		model.addAttribute("id", id);
		return "/webtoonInnerList/webtoonPay";
	}
	
	@PostMapping(value="/getCash")
	@ResponseBody
	public int getCash(@RequestParam String id){
		return webtoonInnerListService.getCash(id);	
	}
	
	@PostMapping(value="/useCash")
	@ResponseBody
	public void useCash(@ModelAttribute CashListDTO cashListDTO) {
		webtoonInnerListService.useCash(cashListDTO);	
	}

	@PostMapping(value="/checkEpisodeBuy")
	@ResponseBody
	public CashListDTO checkEpisodeBuy(@ModelAttribute CashListDTO cashListDTO) {
		System.out.println("checkEpisodeBuy 컨트롤러 옴");
		return webtoonInnerListService.checkEpisodeBuy(cashListDTO);
	}
	
	
	@PostMapping(value="/webtoonKakaoPay")
	@ResponseBody
	public void webtoonKakaoPay(@ModelAttribute CashListDTO cashListDTO) {
		System.out.println("webtoonKakaoPay 컨트롤러 옴");
		webtoonInnerListService.webtoonKakaoPay(cashListDTO);
	}
	
	//--------
	@RequestMapping(value="cashInfo", method=RequestMethod.GET)
	public String cashInfo(){
		return "/cashList/cashList";
	}
	
	@PostMapping(value="/getCashInfo")
	@ResponseBody
	public List<Map<String,Object>> getCashInfo(@RequestParam String id) {
		List<Map<String,Object>> list = webtoonInnerListService.getCashInfo(id);
		return list;
	}
	
}
