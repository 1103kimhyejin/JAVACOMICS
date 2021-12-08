package customerboard.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import customerboard.bean.CustomerBoardDTO;
import customerboard.bean.CustomerboardPaging;
import customerboard.dao.CustomerboardDAO;


@Service
public class CustomerboardServiceImpl implements CustomerboardService {
	@Autowired
	private HttpSession session;
	@Autowired
	private CustomerboardDAO customerboardDAO;
	@Autowired
	private CustomerboardPaging customerboardPaging;

	@Override
	public void customerboardWrite(Map<String, String> map) {
		map.put("id", (String)session.getAttribute("toonMemId"));
		map.put("name", (String)session.getAttribute("toonMemName"));
		map.put("email", (String)session.getAttribute("toonMemEmail"));
		
		customerboardDAO.customerboardWrite(map);
		
	}

	@Override
	public List<CustomerBoardDTO> getCustomerboardList(String pg) {
		System.out.println("serviceImpl getboardlist");
		
		//1페이지당 5개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<CustomerBoardDTO> list = customerboardDAO.getCustomerboardList(map);
		
		System.out.println(list);
		
		return list;
	}

	@Override
	public CustomerboardPaging customerboardPaging(String pg) {
		System.out.println("serviceImpl paging");
		
		int totalA = customerboardDAO.getTotalA(); //총글수
		
		customerboardPaging.setCurrentPage(Integer.parseInt(pg)); //현재 페이지
		customerboardPaging.setPageBlock(5);
		customerboardPaging.setPageSize(5);
		customerboardPaging.setTotalA(totalA);
		customerboardPaging.makePagingHTML();
		
		System.out.println(customerboardPaging);
		return customerboardPaging;
	}

	@Override
	public CustomerBoardDTO getCustomerboard(String seq) {
		return customerboardDAO.getCustomerboard(seq);
	}

	@Override
	public void boardModify(Map<String, Object> map) {
		customerboardDAO.boardModify(map);
		
	}

}
