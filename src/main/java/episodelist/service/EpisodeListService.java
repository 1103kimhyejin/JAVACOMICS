package episodelist.service;

import java.util.List;

import episodelist.bean.EpisodeListDTO;

public interface EpisodeListService {

	List<EpisodeListDTO> getEpisodeListTable(String title);

}
