package customerboard.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import customerboard.bean.CustomerBoardDTO;
import customerboard.bean.CustomerboardPaging;

public interface CustomerboardService {

	public void customerboardWrite(Map<String, String> map);

	public List<CustomerBoardDTO> getCustomerboardList(String pg);

	public CustomerboardPaging customerboardPaging(String pg);
	
	public CustomerboardPaging customerboardPaging(Map<String, String> map);

	public CustomerBoardDTO getCustomerboard(String seq);

	public void boardModify(Map<String, Object> map);

	public void boardDelete(String seq);

	public List<CustomerBoardDTO> getSearchList(Map<String, String> map);

	public void boardReply(Map<String, String> map);

	public String getOriginId(String ref);


}
