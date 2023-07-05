package kr.co.dong.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.CartDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	private static final String namespace = "kr.co.dong.BoardMapper";
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<CartDTO> list() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".list");
	}

}
