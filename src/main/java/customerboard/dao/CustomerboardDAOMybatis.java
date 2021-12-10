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
		//System.out.println("DAOMybatis getboardlist");
		return sqlSession.selectList("customerboardSQL.getCustomerboardList", map);
	}

	@Override
	public int getTotalA() {
		//System.out.println("DAOMybatis paging");
		return sqlSession.selectOne("customerboardSQL.getTotalA");
	}

	@Override
	public int getTotalSearchA(Map<String, String> map) {
		return sqlSession.selectOne("customerboardSQL.getTotalSearchA", map);
	}
	
	@Override
	public CustomerBoardDTO getCustomerboard(String seq) {
		return sqlSession.selectOne("customerboardSQL.getCustomerboard", Integer.parseInt(seq));
	}

	@Override
	public void boardModify(Map<String, Object> map) {
		sqlSession.update("customerboardSQL.boardModify", map);
	}

	@Override
	public void boardDelete(String seq) {
		sqlSession.delete("customerboardSQL.boardDelete", Integer.parseInt(seq));
		
	}

	@Override
	public List<CustomerBoardDTO> getSearchList(Map<String, String> map) {
		return sqlSession.selectList("customerboardSQL.getSearchList", map);
	}

	@Override
	public void boardReply(Map<String, String> map) {
		sqlSession.insert("customerboardSQL.boardReply", map);
		
	}

	@Override
	public CustomerBoardDTO getOriginId(String ref) {
		return sqlSession.selectOne("customerboardSQL.getOriginId", Integer.parseInt(ref));
	}

	
	
}
