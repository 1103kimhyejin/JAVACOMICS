package webtoon.dao;

import java.util.List;
import java.util.Map;

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
	public List<WebtoonDTO> getRankBodyList(String category) {
		
		return sqlSession.selectList("webtoonSQL.getRankBodyList", category);
	}

	@Override
	public List<WebtoonDTO> getStorageBodyList(String toonMemId) {
		return sqlSession.selectList("webtoonSQL.getStorageBodyList", toonMemId);
	}

	@Override
	public List<WebtoonDTO> getStorageBodybottom(String title) {
		return sqlSession.selectList("webtoonSQL.getStorageBodybottom", title);
	}

	@Override
	public void updateRecent(Map<String, Object> map) {
		
		Integer count = sqlSession.selectOne("webtoonSQL.getCount", map);
		System.out.println(count);
		
		map.put("count", count);
		
		if(count == null) {
			sqlSession.insert("webtoonSQL.insertRecent", map);			
		}else {
			sqlSession.update("webtoonSQL.updateRecent", map);
		}
		
	}

	@Override
	public List<WebtoonDTO> homeEndBody(String end) {
		return sqlSession.selectList("webtoonSQL.homeEndBody", end);
	}
}
