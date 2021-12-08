package customerboard.service;

import java.util.List;
import java.util.Map;

import customerboard.bean.CustomerBoardDTO;
import customerboard.bean.CustomerboardPaging;

public interface CustomerboardService {

	public void customerboardWrite(Map<String, String> map);

	public List<CustomerBoardDTO> getCustomerboardList(String pg);

	public CustomerboardPaging customerboardPaging(String pg);

	public CustomerBoardDTO getCustomerboard(String seq);

	public void boardModify(Map<String, Object> map);

}
