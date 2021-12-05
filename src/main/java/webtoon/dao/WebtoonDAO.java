package webtoon.dao;

import java.util.List;

import webtoon.bean.WebtoonDTO;

public interface WebtoonDAO {

	List<WebtoonDTO> getHomeBodyList();

	List<WebtoonDTO> getRankBodyList(String category);

}
