package toonmember.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import toonmember.bean.ToonMemberDTO;
import toonmember.dao.ToonMemberDAO;

@Service
public class ToonMemberServiceImpl implements ToonMemberService {
	@Autowired
	private ToonMemberDAO toonMemberDAO;

	@Override
	public void toonMemberWrite(ToonMemberDTO toonMemberDTO) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(toonMemberDTO.getPwd());
		 
		toonMemberDTO.setPwd(securePassword);
		 		
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
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		String password = map.get("pwd");
		//System.out.println("zzz"+map.get("pwd"));
		//System.out.println("yyy"+toonMemberDTO.getPwd());
		//------
		if(toonMemberDTO==null) {
			return "fail";
		}
		
		if(encoder.matches(password, toonMemberDTO.getPwd())) {
			session.setAttribute("toonMemName", toonMemberDTO.getName());
			session.setAttribute("toonMemId", toonMemberDTO.getId());
			session.setAttribute("toonMemEmail", toonMemberDTO.getEmail());
			return "success";
	        
	    }else {
	    	return "fail";
	    }
		
		
		//------
		
		/*
		if(toonMemberDTO == null) {
			return "fail";
			
		}else {
			session.setAttribute("toonMemName", toonMemberDTO.getName());
			session.setAttribute("toonMemId", toonMemberDTO.getId());
			session.setAttribute("toonMemEmail", toonMemberDTO.getEmail());
			return "success";
		}
		*/
		
	}

	@Override
	public void kakaoMemberWrite(Map<String, String> map, HttpSession session) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(map.get("pwd"));
		 
		map.put("pwd", securePassword);
		
		toonMemberDAO.kakaoMemberWrite(map);
	}

	@Override
	public String cashcheck(String id) {
		ToonMemberDTO toonMemberDTO = toonMemberDAO.checkId(id);
		
		return  Integer.toString(toonMemberDTO.getCash());
		
	}

	@Override
	public ToonMemberDTO memberInfo(String id) {
		return toonMemberDAO.checkId(id);
	}

	@Override
	public void toonMemberModify(ToonMemberDTO toonMemberDTO, HttpSession session) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(toonMemberDTO.getPwd());
		 
		toonMemberDTO.setPwd(securePassword);
		
		session.setAttribute("toonMemName", toonMemberDTO.getName());
		 		
		toonMemberDAO.toonMemberModify(toonMemberDTO);
		
	}

	@Override
	public void memberDelete(String id) {
		toonMemberDAO.memberDelete(id);
		
	}


}
