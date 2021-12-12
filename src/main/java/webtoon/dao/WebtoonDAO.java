package webtoon.dao;

import java.util.List;
import java.util.Map;

import webtoon.bean.WebtoonDTO;

public interface WebtoonDAO {

	List<WebtoonDTO> getHomeBodyList();

	List<WebtoonDTO> getRankBodyList(String category);

	List<WebtoonDTO> getStorageBodyList(String toonMemId);

	List<WebtoonDTO> getStorageBodybottom(String title);

	void updateRecent(Map<String, Object> map);

	List<WebtoonDTO> homeEndBody(String end);

	List<WebtoonDTO> getSearchKeyword(String keyword);

}
