package toonmember.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import toonmember.bean.ToonMemberDTO;

public interface ToonMemberService {

	public void toonMemberWrite(ToonMemberDTO toonMemberDTO);

	public String checkId(String id);

	public String login(Map<String, String> map, HttpSession session);

}
