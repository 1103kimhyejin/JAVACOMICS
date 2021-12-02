package commentgoodbad.dao;

import java.util.List;

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
	public void commentGood(int commentSeq) {
		sqlSession.insert("commentGoodBadSQL.commentGood",commentSeq);
		
	}
	

}
