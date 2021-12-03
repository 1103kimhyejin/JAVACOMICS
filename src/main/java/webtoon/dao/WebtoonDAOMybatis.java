package webtoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webtoon.bean.WebtoonDTO;

@Repository
@Transactional
public class WebtoonDAOMybatis implements WebtoonDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<WebtoonDTO> getHomeBodyList() {
		return sqlSession.selectList("webtoonSQL.getHomeBodyList");
	}

	@Override
	public List<WebtoonDTO> getRankBodyList() {
		
		return sqlSession.selectList("webtoonSQL.getRankBodyList");
	}
}
