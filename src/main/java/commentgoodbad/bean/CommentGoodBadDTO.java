package commentgoodbad.bean;

import lombok.Data;

@Data
public class CommentGoodBadDTO {
	private int commentSeq;
	private String goodBadId;
	private String commentgood;
	private String commentBad;
}
