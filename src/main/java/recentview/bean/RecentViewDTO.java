package recentview.bean;

import java.util.Date;
import lombok.Data;


@Data
public class RecentViewDTO {
	private String id;
	private int episodeCode;
	private Date logtime;
}
