package commentgoodbad.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import commentgoodbad.bean.CommentGoodBadDTO;
import commentgoodbad.dao.CommentGoodBadDAO;

@Service
public class CommentGoodBadServiceImpl implements CommentGoodBadService {
	@Autowired
	private CommentGoodBadDAO commentGoodBadDAO;

	@Override
	public void commentGood(int commentSeq) {
		commentGoodBadDAO.commentGood(commentSeq);
		
	}
	


	
}
