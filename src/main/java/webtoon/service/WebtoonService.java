package webtoon.service;

import java.util.List;

import webtoon.bean.WebtoonDTO;

public interface WebtoonService {

	List<WebtoonDTO> getHomeBodyList();

	List<WebtoonDTO> getRankBodyList(String category);

}
