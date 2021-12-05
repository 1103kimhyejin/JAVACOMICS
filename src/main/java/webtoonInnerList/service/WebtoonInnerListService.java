package webtoonInnerList.service;

import java.util.List;

import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;

public interface WebtoonInnerListService {

	public WebtoonInnerListDTO getEpisode(String title);

	public List<EpisodeListDTO> episodeList(String title);

//	WebtoonInnerListDTO episodeList(String title);
}
