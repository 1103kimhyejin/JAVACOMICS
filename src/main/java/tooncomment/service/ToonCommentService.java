package tooncomment.service;

import java.util.List;

import tooncomment.bean.ToonCommentDTO;

public interface ToonCommentService {

	public void toonCommentWrite(ToonCommentDTO toonCommentDTO);

	public List<ToonCommentDTO> getToonCommentList(int episodecode);

	public List<ToonCommentDTO> SortLatest(int episodecode);




}
