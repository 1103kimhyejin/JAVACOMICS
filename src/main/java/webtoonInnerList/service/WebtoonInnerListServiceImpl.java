package webtoonInnerList.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cashlist.bean.CashListDTO;
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
	public int getCash(String id) {
		return webtoonInnerListDAO.getCash(id);
	}

	@Override
	public void useCash(CashListDTO cashListDTO) {
		webtoonInnerListDAO.useCash(cashListDTO);
	}

	@Override
	public CashListDTO checkEpisodeBuy(CashListDTO cashListDTO) {
		return webtoonInnerListDAO.checkEpisodeBuy(cashListDTO);
	}

	@Override
	public void webtoonKakaoPay(CashListDTO cashListDTO) {
		webtoonInnerListDAO.webtoonKakaoPay(cashListDTO);
	}

	@Override
	public List<Map<String,Object>> getCashInfo(String id) {
		return webtoonInnerListDAO.getCashInfo(id);
		
	}

}
