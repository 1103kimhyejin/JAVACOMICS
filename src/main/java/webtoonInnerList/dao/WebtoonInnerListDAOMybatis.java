package webtoonInnerList.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webtoonInnerList.bean.WebtoonInnerListDTO;

@Repository
@Transactional
public class WebtoonInnerListDAOMybatis implements WebtoonInnerListDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public WebtoonInnerListDTO episodeList(String title) {
		return sqlSession.selectOne("webtoonInnerListSQL.episodeList", title);
	}
}
