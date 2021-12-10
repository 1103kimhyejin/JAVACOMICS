package tooncomment.service;

import java.util.List;

import tooncomment.bean.ToonCommentDTO;

public interface ToonCommentService {

	public void toonCommentWrite(ToonCommentDTO toonCommentDTO);

	public List<ToonCommentDTO> getToonCommentList(int episodecode);

	public List<ToonCommentDTO> sortLatest(int episodecode);

	public ToonCommentDTO getCommentGood(int commentSeq);

	public int getToonCommentCount(int episodecode);

	public List<ToonCommentDTO> commentCheckId(ToonCommentDTO toonCommentDTO);

	public void commentDelete(int commentSeq);

	public ToonCommentDTO getPcomment(int commentSeq);

	public void toonCommentReplyWrite(ToonCommentDTO toonCommentDTO);

	public List<ToonCommentDTO> getToonCommentReplyList(int ref);


}
