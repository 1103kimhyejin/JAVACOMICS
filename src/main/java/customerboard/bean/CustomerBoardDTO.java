package customerboard.bean;

import java.util.Date;
import lombok.Data;

@Data
public class CustomerBoardDTO {
	private int seq;
	private String id;
	private String subject;
	private String content;
	private String image;
	private int ref;
	private int lev;
	private int step;
	private int pseq;
	private int reply;
	private Date logtime;
}
