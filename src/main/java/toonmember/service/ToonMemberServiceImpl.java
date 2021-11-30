package toonmember.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toonmember.bean.ToonMemberDTO;
import toonmember.dao.ToonMemberDAO;

@Service
public class ToonMemberServiceImpl implements ToonMemberService {
	@Autowired
	private ToonMemberDAO toonMemberDAO;

	@Override
	public void toonMemberWrite(ToonMemberDTO toonMemberDTO) {
		toonMemberDAO.toonMemberWrite(toonMemberDTO);
		
	}

	@Override
	public String checkId(String id) {
		ToonMemberDTO toonMemberDTO = toonMemberDAO.checkId(id);
		
		if(toonMemberDTO==null) {
			return "non_exist";
		} else {
			return "exist";
		}
	}

}
