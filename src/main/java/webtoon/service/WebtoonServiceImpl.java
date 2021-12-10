package webtoon.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webtoon.bean.WebtoonDTO;
import webtoon.dao.WebtoonDAO;

@Service
public class WebtoonServiceImpl implements WebtoonService {
	
	@Autowired
	private WebtoonDAO webtoonDAO;

	@Override
	public List<WebtoonDTO> getHomeBodyList() {
		
		return webtoonDAO.getHomeBodyList();
	}

	@Override
	public List<WebtoonDTO> getRankBodyList(String category) {
		
		return webtoonDAO.getRankBodyList(category);
	}



	@Override
	public JSONObject getStorageBodyList(String toonMemId) {
		List<WebtoonDTO> list = webtoonDAO.getStorageBodyList(toonMemId);
		int random = (int)(Math.random() * list.size());
		
		JSONObject json = new JSONObject();
		
		json.put("list", list);
		json.put("random", random);
		
		return json;
		
		
	}

	@Override
	public List<WebtoonDTO> getStorageBodybottom(String title) {
		
		return webtoonDAO.getStorageBodybottom(title);
	}

	@Override
	public void updateRecent(int episodeCode, String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("episodeCode", episodeCode);
		map.put("id", id);
		webtoonDAO.updateRecent(map);
	}

	@Override
	public List<WebtoonDTO> homeEndBody(String end) {
		return webtoonDAO.homeEndBody(end);
	}
}
