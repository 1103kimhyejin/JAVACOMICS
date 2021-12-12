package tooncomment.dao;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

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

	@Override
	public List<ToonCommentDTO> commentCheckId(ToonCommentDTO toonCommentDTO) {
		return sqlSession.selectList("toonCommentSQL.commentCheckId", toonCommentDTO);
	}

	@Override
	public void commentDelete(int commentSeq) {
		sqlSession.delete("toonCommentSQL.commentDelete", commentSeq);
	}

	@Override
	public ToonCommentDTO getPcomment(int commentSeq) {
		return sqlSession.selectOne("toonCommentSQL.getPcomment", commentSeq);
	}

	@Override
	public void toonCommentReplyWrite(ToonCommentDTO toonCommentDTO) {
		sqlSession.insert("toonCommentSQL.toonCommentReplyWrite", toonCommentDTO);
	}

	@Override
	public List<ToonCommentDTO> getToonCommentReplyList(int ref) {
		return sqlSession.selectList("toonCommentSQL.getToonCommentReplyList", ref);
	}

	@Override
	public ToonCommentDTO replytotal(int commentSeq) {
		return sqlSession.selectOne("toonCommentSQL.replytotal", commentSeq);
	}

	@Override
	public void replyDelete(ToonCommentDTO toonCommentDTO) {
		sqlSession.delete("toonCommentSQL.replyDelete", toonCommentDTO);
	}



}
