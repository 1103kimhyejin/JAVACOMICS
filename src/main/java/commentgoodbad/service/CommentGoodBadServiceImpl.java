package commentgoodbad.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import commentgoodbad.bean.CommentGoodBadDTO;
import commentgoodbad.dao.CommentGoodBadDAO;
import tooncomment.bean.ToonCommentDTO;


@Service
public class CommentGoodBadServiceImpl implements CommentGoodBadService {
	@Autowired
	private CommentGoodBadDAO commentGoodBadDAO;

	

	@Override
	public void commentGood(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDAO.commentGood(commentGoodBadDTO);		
		
	}



	@Override
	public void commentBad(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDAO.commentBad(commentGoodBadDTO);		
		
	}

	@Override
	public String checkGoodId(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDTO = commentGoodBadDAO.checkGoodId(commentGoodBadDTO);
		
		if(commentGoodBadDTO == null)
			return "non_exist";
		else
			return "exist"; 

	}

	@Override
	public String checkBadId(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDTO = commentGoodBadDAO.checkBadId(commentGoodBadDTO);
		
		if(commentGoodBadDTO == null)
			return "non_exist";
		else
			return "exist"; 

	}



	@Override
	public void commentGoodDelete(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDAO.commentGoodDelete(commentGoodBadDTO);
		
	}



	@Override
	public void commentBadDelete(CommentGoodBadDTO commentGoodBadDTO) {
		commentGoodBadDAO.commentBadDelete(commentGoodBadDTO);
		
	}



	@Override
	public List<CommentGoodBadDTO> commentGoodCheck(CommentGoodBadDTO commentGoodBadDTO) {
		return commentGoodBadDAO.commentGoodCheck(commentGoodBadDTO);
	}



	@Override
	public List<CommentGoodBadDTO> commentBadCheck(CommentGoodBadDTO commentGoodBadDTO) {
		return commentGoodBadDAO.commentBadCheck(commentGoodBadDTO);
	}



	
}
