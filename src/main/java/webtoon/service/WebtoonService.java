package webtoon.service;

import java.util.List;

import org.json.simple.JSONObject;

import webtoon.bean.WebtoonDTO;

public interface WebtoonService {

	List<WebtoonDTO> getHomeBodyList();

	List<WebtoonDTO> getRankBodyList(String category);

	JSONObject getStorageBodyList(String toonMemId);

	List<WebtoonDTO> getStorageBodybottom(String title);

}
