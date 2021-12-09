package commentgoodbad.service;

import java.util.List;

import commentgoodbad.bean.CommentGoodBadDTO;
import tooncomment.bean.ToonCommentDTO;

public interface CommentGoodBadService {


	public void commentGood(CommentGoodBadDTO commentGoodBadDTO);

	public void commentBad(CommentGoodBadDTO commentGoodBadDTO);

	public String checkGoodId(CommentGoodBadDTO commentGoodBadDTO);
	public String checkBadId(CommentGoodBadDTO commentGoodBadDTO);

	public void commentGoodDelete(CommentGoodBadDTO commentGoodBadDTO);

	public void commentBadDelete(CommentGoodBadDTO commentGoodBadDTO);

	public List<CommentGoodBadDTO> commentGoodCheck(CommentGoodBadDTO commentGoodBadDTO);

	public List<CommentGoodBadDTO> commentBadCheck(CommentGoodBadDTO commentGoodBadDTO);



}
