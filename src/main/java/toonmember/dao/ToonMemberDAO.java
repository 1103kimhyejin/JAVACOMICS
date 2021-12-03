package toonmember.dao;

import java.util.Map;

import toonmember.bean.ToonMemberDTO;

public interface ToonMemberDAO {

	public void toonMemberWrite(ToonMemberDTO toonMemberDTO);

	public ToonMemberDTO checkId(String id);

	public ToonMemberDTO login(Map<String, String> map);

}
