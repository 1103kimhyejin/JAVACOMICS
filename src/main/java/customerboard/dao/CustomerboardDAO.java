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

	public void boardDelete(String seq);

	public List<CustomerBoardDTO> getSearchList(Map<String, String> map);

	public int getTotalSearchA(Map<String, String> map);

	public void boardReply(Map<String, String> map);

	public CustomerBoardDTO getOriginId(String ref);

}
