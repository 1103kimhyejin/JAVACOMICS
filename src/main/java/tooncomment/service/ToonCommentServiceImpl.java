package tooncomment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import tooncomment.bean.ToonCommentDTO;
import tooncomment.dao.ToonCommentDAO;

@Service
public class ToonCommentServiceImpl implements ToonCommentService {
	@Autowired
	private ToonCommentDAO toonCommentDAO;
	
	@Override
	public void toonCommentWrite(ToonCommentDTO toonCommentDTO) {
		toonCommentDAO.toonCommentWrite(toonCommentDTO);
		
	}

	@Override
	public List<ToonCommentDTO> getToonCommentList(int episodecode) {
		
		return toonCommentDAO.getToonCommentList(episodecode);
	}

	@Override
	public List<ToonCommentDTO> sortLatest(int episodecode) {
		return toonCommentDAO.sortLatest(episodecode);
	}

	@Override
	public ToonCommentDTO getCommentGood(int commentSeq) {
		return toonCommentDAO.getCommentGood(commentSeq);
	}

	@Override
	public int getToonCommentCount(int episodecode) {
		return toonCommentDAO.getToonCommentCount(episodecode);
	}

	@Override
	public List<ToonCommentDTO> commentCheckId(ToonCommentDTO toonCommentDTO) {
		return toonCommentDAO.commentCheckId(toonCommentDTO);
	}

	@Override
	public void commentDelete(int commentSeq) {
		toonCommentDAO.commentDelete(commentSeq);
	}

}
