package tooncomment.dao;

import java.util.List;

import tooncomment.bean.ToonCommentDTO;

public interface ToonCommentDAO {

	public void toonCommentWrite(ToonCommentDTO toonCommentDTO);

	public List<ToonCommentDTO> getToonCommentList(int episodecode);

	public List<ToonCommentDTO> sortLatest(int episodecode);

	public ToonCommentDTO getCommentGood(int commentSeq);

	public int getToonCommentCount(int episodecode);

	public List<ToonCommentDTO> commentCheckId(ToonCommentDTO toonCommentDTO);

	public void commentDelete(int commentSeq);

}
