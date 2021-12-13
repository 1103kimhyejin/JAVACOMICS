package webtoonInnerList.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cashlist.bean.CashListDTO;
import episodelist.bean.EpisodeListDTO;
import webtoonInnerList.bean.WebtoonInnerListDTO;

@Repository
@Transactional
public class WebtoonInnerListDAOMybatis implements WebtoonInnerListDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public WebtoonInnerListDTO getEpisode(String title) {
		return sqlSession.selectOne("webtoonInnerListSQL.getEpisode", title);
	}

	@Override
	public List<EpisodeListDTO> episodeList(String title) {
		return sqlSession.selectList("webtoonInnerListSQL.episodeList", title);
	}

	@Override
	public int getCash(String id) {
		return sqlSession.selectOne("webtoonInnerListSQL.getCash", id);
	}

	@Override
	public void useCash(CashListDTO cashListDTO) {
		sqlSession.insert("webtoonInnerListSQL.useCash", cashListDTO);
	}

	@Override
	public CashListDTO checkEpisodeBuy(CashListDTO cashListDTO) {
		return sqlSession.selectOne("webtoonInnerListSQL.checkEpisodeBuy", cashListDTO);
	}

	@Override
	public void webtoonKakaoPay(CashListDTO cashListDTO) {
		sqlSession.insert("webtoonInnerListSQL.webtoonKakaoPay", cashListDTO);
	}

	@Override
	public List<Map<String,Object>> getCashInfo(String id) {
		List<Map<String,Object>> result = sqlSession.selectList("webtoonInnerListSQL.getCashInfo", id);
		return result;
	}

}
