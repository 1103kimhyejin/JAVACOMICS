package commentgoodbad.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import commentgoodbad.bean.CommentGoodBadDTO;

@Repository
@Transactional
public class CommentGoodBadDAOMybatis implements CommentGoodBadDAO {
	@Autowired
	private SqlSession sqlSession;

	

	@Override
	public void commentGood(CommentGoodBadDTO commentGoodBadDTO) {
		sqlSession.insert("commentGoodBadSQL.commentGood",commentGoodBadDTO);
		
	}



	@Override
	public void commentBad(CommentGoodBadDTO commentGoodBadDTO) {
		sqlSession.insert("commentGoodBadSQL.commentBad",commentGoodBadDTO);
		
	}


	@Override
	public CommentGoodBadDTO checkGoodId(CommentGoodBadDTO commentGoodBadDTO) {
		return sqlSession.selectOne("commentGoodBadSQL.checkGoodId", commentGoodBadDTO);

	}
	@Override
	public CommentGoodBadDTO checkBadId(CommentGoodBadDTO commentGoodBadDTO) {
		return sqlSession.selectOne("commentGoodBadSQL.checkBadId", commentGoodBadDTO);

	}



	@Override
	public void commentGoodDelete(CommentGoodBadDTO commentGoodBadDTO) {
		sqlSession.delete("commentGoodBadSQL.commentGoodDelete",commentGoodBadDTO);
		
	}



	@Override
	public void commentBadDelete(CommentGoodBadDTO commentGoodBadDTO) {
		sqlSession.delete("commentGoodBadSQL.commentBadDelete",commentGoodBadDTO);
		
	}



	@Override
	public List<CommentGoodBadDTO> commentGoodBadCheck(CommentGoodBadDTO commentGoodBadDTO) {
		return sqlSession.selectList("commentGoodBadSQL.commentGoodBadCheck",commentGoodBadDTO);
	}
	

}
