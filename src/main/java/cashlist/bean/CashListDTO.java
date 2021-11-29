package cashlist.bean;

import java.util.Date;

import lombok.Data;

@Data
public class CashListDTO {
	private String id;
	private int cash;
	private int episodeCode;
	private Date logtime;
}
