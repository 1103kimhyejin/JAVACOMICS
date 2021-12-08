package customerboard.dao;

import java.util.List;
import java.util.Map;

import customerboard.bean.CustomerBoardDTO;

public interface CustomerboardDAO {

	public void customerboardWrite(Map<String, String> map);

	public List<CustomerBoardDTO> getCustomerboardList(Map<String, Integer> map);

	public int getTotalA();

	public CustomerBoardDTO getCustomerboard(String seq);

	public void boardModify(Map<String, Object> map);

}
