package webtoonInnerList.dao;

import java.util.List;

import cashlist.bean.CashListDTO;
import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;

public interface WebtoonInnerListDAO {

	public WebtoonInnerListDTO getEpisode(String title);

	public List<EpisodeListDTO> episodeList(String title);

	public int getCash(String id);

	public void useCash(CashListDTO cashListDTO);

	public CashListDTO checkEpisodeBuy(CashListDTO cashListDTO);

	public void webtoonKakaoPay(CashListDTO cashListDTO);

}
