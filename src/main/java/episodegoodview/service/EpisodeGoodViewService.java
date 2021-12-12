package episodegoodview.service;

import episodegoodview.bean.EpisodeGoodViewDTO;

public interface EpisodeGoodViewService {

	public void episodeGood(EpisodeGoodViewDTO episodeGoodViewDTO);

	public void episodeGoodDelete(EpisodeGoodViewDTO episodeGoodViewDTO);

	public String episodeGoodCheckId(EpisodeGoodViewDTO episodeGoodViewDTO);

	public int goodCount(int episodecode);

	public void viewUpdate(EpisodeGoodViewDTO episodeGoodViewDTO);

	public String viewIdCheck(EpisodeGoodViewDTO episodeGoodViewDTO);

}
