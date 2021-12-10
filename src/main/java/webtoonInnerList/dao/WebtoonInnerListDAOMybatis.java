package webtoonInnerList.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	public int getCash(String toonMemId) {
		return sqlSession.selectOne("webtoonInnerListSQL.getCash", toonMemId);
	}

//	@Override
//	public WebtoonInnerListDTO episodeList(String title) {
//		return sqlSession.selectOne("webtoonInnerListSQL.episodeList", title);
//	}
}
