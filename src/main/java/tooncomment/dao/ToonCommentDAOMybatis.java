package tooncomment.dao;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tooncomment.bean.ToonCommentDTO;

@Repository
@Transactional
public class ToonCommentDAOMybatis implements ToonCommentDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void toonCommentWrite(ToonCommentDTO toonCommentDTO) {
		sqlSession.insert("toonCommentSQL.toonCommentWrite", toonCommentDTO);
	}

	@Override
	public List<ToonCommentDTO> getToonCommentList(int episodecode) {
		return sqlSession.selectList("toonCommentSQL.getToonCommentList", episodecode);
	}

	@Override
	public List<ToonCommentDTO> sortLatest(int episodecode) {
		return sqlSession.selectList("toonCommentSQL.sortLatest", episodecode);
	}

	@Override
	public ToonCommentDTO getCommentGood(int commentSeq) {
		return sqlSession.selectOne("toonCommentSQL.getCommentGood", commentSeq);
	}

	@Override
	public int getToonCommentCount(int episodecode) {
		return sqlSession.selectOne("toonCommentSQL.getToonCommentCount", episodecode);
	}

}
