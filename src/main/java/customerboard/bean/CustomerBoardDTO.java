package customerboard.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date logtime;
}
