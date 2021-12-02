package webtoonInnerList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webtoonInnerList.bean.WebtoonInnerListDTO;
import webtoonInnerList.dao.WebtoonInnerListDAO;


@Service
public class WebtoonInnerListServiceImpl implements WebtoonInnerListService {
	
	@Autowired
	private WebtoonInnerListDAO webtoonInnerListDAO;

	@Override
	public WebtoonInnerListDTO episodeList(String title) {
		
		return webtoonInnerListDAO.episodeList(title);
	}
}
