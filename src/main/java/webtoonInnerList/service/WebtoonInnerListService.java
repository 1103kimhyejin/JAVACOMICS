package webtoonInnerList.service;

import java.util.List;
import java.util.Map;

import cashlist.bean.CashListDTO;
import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;

public interface WebtoonInnerListService {

	public WebtoonInnerListDTO getEpisode(String title);

	public List<EpisodeListDTO> episodeList(String title);

	public int getCash(String id);

	public void useCash(CashListDTO cashListDTO);

	public CashListDTO checkEpisodeBuy(CashListDTO cashListDTO);

	public void webtoonKakaoPay(CashListDTO cashListDTO);

	public List<Map<String,Object>> getCashInfo(String id);

}
