package kr.co.dong.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public List<ItemDTO> adminItemSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String categoryType, String categoryType2) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
	    params.put("endDate", endDate);
	    
	    int category = Integer.parseInt(categoryType);
	    int category2 = Integer.parseInt(categoryType2);
	    
	    params.put("categoryType", category);
	    params.put("categoryType2", category2);
		return sqlsession.selectList(namespace+".adminItemSearch",params);
	}

	@Override
	public int adminItem2() {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminItem2");
	}
	
	@Override
	public int adminItemInsert(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert",itemDTO);
	}
	
	@Override
	public ItemDTO adminItemInsertItemnum() {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminItemInsertItemnum");
	}
	
	@Override
	public int adminItemInsert2(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert2",itemnum);
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
	public List<MemberDTO> adminMemberSearch(String searchType, String search, String dateType, String startDate,
			String endDate) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
	    params.put("endDate", endDate);
		return sqlsession.selectList(namespace+".adminMemberSearch",params);
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
	public int adminMemberRegister(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminMemberRegister",memberDTO);
	}

	@Override
	public int adminCheckID(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminCheckID",memberDTO);
	}
	
	@Override
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminHelp");
	}

	@Override
	public List<HelpDTO> adminHelpSearch(String searchType, String search, String dateType, String startDate,
			String endDate) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
	    params.put("endDate", endDate);
		return sqlsession.selectList(namespace+".adminHelpSearch",params);
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
		return sqlsession.selectOne(namespace+".adminReturnDetail",returnnum);
	}
	
	@Override
	public int adminReturnDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReturnDetail2",returnnum);
	}
	
	@Override
	public List<ReturnDTO> adminExchange() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminExchange");
	}
	
	@Override
	public ReturnDTO adminExchangeDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminExchangeDetail",returnnum);
	}
	
	@Override
	public int adminExchangeDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminExchangeDetail2",returnnum);
	}

	@Override
	public List<Dr_reviewDTO> adminReview() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReview");
		
	}

	@Override
	public Dr_reviewDTO adminReviewDetail(int drnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminReviewDetail",drnum);
	}

	@Override
	public int adminReviewDetail2(int drnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReviewDetail2",drnum);
	}

	@Override
	public int adminReviewDetail3(Dr_reviewDTO dr_reviewDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReviewDetail3",dr_reviewDTO);
	}
}
