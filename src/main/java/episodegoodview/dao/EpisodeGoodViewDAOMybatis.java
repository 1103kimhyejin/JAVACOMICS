package episodegoodview.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import episodegoodview.bean.EpisodeGoodViewDTO;

@Repository
@Transactional
public class EpisodeGoodViewDAOMybatis implements EpisodeGoodViewDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void episodeGood(EpisodeGoodViewDTO episodeGoodViewDTO) {
		sqlSession.insert("episodeGoodViewSQL.episodeGood",episodeGoodViewDTO);	
	}

	@Override
	public void episodeGoodDelete(EpisodeGoodViewDTO episodeGoodViewDTO) {
		sqlSession.delete("episodeGoodViewSQL.episodeGoodDelete",episodeGoodViewDTO);
	}

	@Override
	public String episodeGoodCheckId(EpisodeGoodViewDTO episodeGoodViewDTO) {
		return sqlSession.selectOne("episodeGoodViewSQL.episodeGoodCheckId",episodeGoodViewDTO);
	}

	@Override
	public int goodCount(int episodecode) {
		return sqlSession.selectOne("episodeGoodViewSQL.goodCount", episodecode);
	}

	@Override
	public void viewUpdate(EpisodeGoodViewDTO episodeGoodViewDTO) {
		sqlSession.insert("episodeGoodViewSQL.viewUpdate",episodeGoodViewDTO);	
	}

	@Override
	public EpisodeGoodViewDTO viewIdCheck(EpisodeGoodViewDTO episodeGoodViewDTO) {
		return sqlSession.selectOne("episodeGoodViewSQL.viewIdCheck", episodeGoodViewDTO);
	}

}
