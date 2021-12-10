package webtoonInnerList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;
import webtoonInnerList.dao.WebtoonInnerListDAO;


@Service
public class WebtoonInnerListServiceImpl implements WebtoonInnerListService {
	
	@Autowired
	private WebtoonInnerListDAO webtoonInnerListDAO;

	@Override
	public WebtoonInnerListDTO getEpisode(String title) {
		return webtoonInnerListDAO.getEpisode(title);
	}

	@Override
	public List<EpisodeListDTO> episodeList(String title) {
		return webtoonInnerListDAO.episodeList(title);
	}

	@Override
	public int getCash(String toonMemId) {
		return webtoonInnerListDAO.getCash(toonMemId);
	}

//	@Override
//	public WebtoonInnerListDTO episodeList(String title) {
//		
//		return webtoonInnerListDAO.episodeList(title);
//	}
}
