package tooncomment.bean;

import java.util.Date;
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
	private Date logtime;
}
