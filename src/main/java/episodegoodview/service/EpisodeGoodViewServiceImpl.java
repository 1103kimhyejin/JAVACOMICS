package episodegoodview.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import episodegoodview.bean.EpisodeGoodViewDTO;
import episodegoodview.dao.EpisodeGoodViewDAO;

@Service
public class EpisodeGoodViewServiceImpl implements EpisodeGoodViewService {
	@Autowired
	private EpisodeGoodViewDAO episodeGoodViewDAO;
	
	@Override
	public void episodeGood(EpisodeGoodViewDTO episodeGoodViewDTO) {
		episodeGoodViewDAO.episodeGood(episodeGoodViewDTO);
		
	}

	@Override
	public void episodeGoodDelete(EpisodeGoodViewDTO episodeGoodViewDTO) {
		episodeGoodViewDAO.episodeGoodDelete(episodeGoodViewDTO);
	}

	@Override
	public String episodeGoodCheckId(EpisodeGoodViewDTO episodeGoodViewDTO) {
		String episodeGoodCheckId = episodeGoodViewDAO.episodeGoodCheckId(episodeGoodViewDTO);
		if(episodeGoodCheckId == null)
			return "non_exist";
		else
			return "exist"; 
	}

	@Override
	public int goodCount(int episodecode) {
		return episodeGoodViewDAO.goodCount(episodecode);
	}

}
