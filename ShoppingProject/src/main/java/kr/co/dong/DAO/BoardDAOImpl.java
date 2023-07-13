package kr.co.dong.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
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
	public int adminItemInsert(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert",itemDTO);
	}
	
	@Override
	public ItemDTO adminItemDetail(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminItemDetail",itemnum);
	}

	@Override
	public List<Iv_itemDTO> adminItemDetail2(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminItemDetail2",itemnum);
	}
	
	@Override
	public int adminItemAdd(Iv_itemDTO iv_itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemAdd",iv_itemDTO);
	}
	
	@Override
	public int adminItemUpdate(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemUpdate",itemDTO);
	}
	
	@Override
	public List<MemberDTO> adminMember() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminMember");
	}
	
	@Override
	public MemberDTO adminMemberDetail(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminMemberDetail",membernum);
	}
	
	@Override
	public int adminMemberUpdate(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberUpdate",memberDTO);
	}
	
	@Override
	public int adminMemberDelete(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberDelete",memberDTO);
	}

	@Override
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminHelp");
	}
	
	@Override
	public HelpDTO adminHelpDetail(int hno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminHelpDetail",hno);
	}

	@Override
	public int adminHelpUpdate(HelpDTO helpDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminHelpUpdate",helpDTO);
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
	public ReturnDTO adminReturnDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminReturnDetail");
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
