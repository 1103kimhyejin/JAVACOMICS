package webtoonInnerList.dao;

import java.util.List;

import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;

public interface WebtoonInnerListDAO {

	public WebtoonInnerListDTO getEpisode(String title);

	public List<EpisodeListDTO> episodeList(String title);

}
