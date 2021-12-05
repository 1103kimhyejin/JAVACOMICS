package toonmember.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

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

	@Override
	public String login(Map<String, String> map, HttpSession session) {
		ToonMemberDTO toonMemberDTO = toonMemberDAO.login(map);
		System.out.println("aaaaaa");
		if(toonMemberDTO == null) {
			return "fail";
			
		}else {
			session.setAttribute("toonMemName", toonMemberDTO.getName());
			session.setAttribute("toonMemId", toonMemberDTO.getId());
			return "success";
		}
		
	}

	@Override
	public void kakaoMemberWrite(Map<String, String> map, HttpSession session) {
		
		toonMemberDAO.kakaoMemberWrite(map);
	}

	@Override
	public String cashcheck(String id) {
		ToonMemberDTO toonMemberDTO = toonMemberDAO.checkId(id);
		
		return  Integer.toString(toonMemberDTO.getCash());
		
	}

}
