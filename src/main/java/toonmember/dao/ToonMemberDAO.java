package toonmember.dao;

import toonmember.bean.ToonMemberDTO;

public interface ToonMemberDAO {

	public void toonMemberWrite(ToonMemberDTO toonMemberDTO);

	public ToonMemberDTO checkId(String id);

}
