package toonmember.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ToonMemberDTO {
	private String name;
	private String id;
	private String pwd;
	private String gender;
	private String age;
	private String email;
	private int cash;
	private Date logtime;
}
