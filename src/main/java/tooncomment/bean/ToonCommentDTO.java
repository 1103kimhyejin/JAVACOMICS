package tooncomment.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;


@Data
public class ToonCommentDTO {
	private int commentSeq;
	private int episodeCode;
	private String id;
	private String content;
	private int ref;
	private int lev;
	private int step;
	private int pseq;
	@JsonFormat(pattern="yy.MM.dd")
	private Date logtime;
	private int reply;
	private int totalgood;
	private int totalbad;
	
}
