package toonmember.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import toonmember.bean.ToonMemberDTO;

public interface ToonMemberService {

	public void toonMemberWrite(ToonMemberDTO toonMemberDTO);

	public String checkId(String id);

	public String login(Map<String, String> map, HttpSession session);

	public void kakaoMemberWrite(Map<String, String> map, HttpSession session);

	public String cashcheck(String id);

	public ToonMemberDTO memberInfo(String id);

	public void toonMemberModify(ToonMemberDTO toonMemberDTO, HttpSession session);

	public void memberDelete(String id);

}
