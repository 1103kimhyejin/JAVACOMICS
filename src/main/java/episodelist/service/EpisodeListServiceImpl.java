package episodelist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import episodelist.bean.EpisodeListDTO;
import episodelist.dao.EpisodeListDAO;

@Service
public class EpisodeListServiceImpl implements EpisodeListService {
	@Autowired
	private EpisodeListDAO episodeListDAO;
	
	
	@Override
	public List<EpisodeListDTO> getEpisodeListTable(String title) {
		return episodeListDAO.getEpisodeListTable(title);
	}


	@Override
	public EpisodeListDTO getEpisode(int episodeCode) {
		return episodeListDAO.getEpisode(episodeCode);
	}


	@Override
	public List<EpisodeListDTO> lownumEpisodeCode(String title) {
		return episodeListDAO.lownumEpisodeCode(title);
	}

}
