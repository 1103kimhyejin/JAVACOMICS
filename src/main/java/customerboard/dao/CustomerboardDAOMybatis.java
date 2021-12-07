package customerboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import customerboard.bean.CustomerBoardDTO;

@Repository
public class CustomerboardDAOMybatis implements CustomerboardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void customerboardWrite(Map<String, String> map) {
		sqlSession.insert("customerboardSQL.customerboardWrite", map);
		
	}

	@Override
	public List<CustomerBoardDTO> getCustomerboardList(Map<String, Integer> map) {
		System.out.println("DAOMybatis getboardlist");
		return sqlSession.selectList("customerboardSQL.getCustomerboardList", map);
	}

	@Override
	public int getTotalA() {
		System.out.println("DAOMybatis paging");
		return sqlSession.selectOne("customerboardSQL.getTotalA");
	}
	
	
}
