package toonmember.service;

import toonmember.bean.ToonMemberDTO;

public interface ToonMemberService {

	public void toonMemberWrite(ToonMemberDTO toonMemberDTO);

	public String checkId(String id);

}
