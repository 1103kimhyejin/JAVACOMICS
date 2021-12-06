package episodelist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import episodelist.bean.EpisodeListDTO;
@Repository
@Transactional
public class EpisodeListDAOMybatis implements EpisodeListDAO {
	@Autowired
	private SqlSession sqlSession;
	@Override
	
	public List<EpisodeListDTO> getEpisodeListTable(String title) {
		return sqlSession.selectList("episodeListSQL.getEpisodeListTable", title);
	}

}
