package episodelist.bean;

import java.util.Date;

import lombok.Data;

@Data
public class EpisodeListDTO {
	private int episodeCode;
	private String episode;
	private String title;
	private String subTitle;
	private String thumbnail;
	private String episodeContent;
	private String updateTime;
	private String free;
}
