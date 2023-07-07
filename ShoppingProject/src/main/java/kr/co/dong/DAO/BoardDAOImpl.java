package kr.co.dong.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	private static final String namespace = "kr.co.dong.BoardMapper";
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<ItemDTO> adminItem() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminItem");
	}
	
	@Override
	public List<MemberDTO> adminMember() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminMember");
	}

	@Override
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminHelp");
	}
	
	@Override
	public List<OrderDTO> adminOrder() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminOrder");
	}

	@Override
	public List<ReturnDTO> adminReturn() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReturn");
	}

	@Override
	public List<ReturnDTO> adminExchange() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminExchange");
	}

	@Override
	public List<Dr_reviewDTO> adminReview() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReview");
		
	}



}
