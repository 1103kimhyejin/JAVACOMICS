package episodelist.service;

import java.util.List;

import episodelist.bean.EpisodeListDTO;


public interface EpisodeListService {

	public List<EpisodeListDTO> getEpisodeListTable(String title);

	public EpisodeListDTO getEpisode(int episodeCode);

	public List<EpisodeListDTO> lownumEpisodeCode(String title);

}
