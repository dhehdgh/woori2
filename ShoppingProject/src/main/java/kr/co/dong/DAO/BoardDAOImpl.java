package kr.co.dong.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.AddressDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.Dv_order_itemDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ImgDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.RankDTO;
import kr.co.dong.DTO.ReturnDTO;
import kr.co.dong.DTO.ReviewDTO;

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
	public int adminItemInsert(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert",itemDTO);
	}

	@Override
	public int adminImageInsert(ImgDTO imgDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminImageInsert",imgDTO);
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
	public int adminImageUpdate(ImgDTO imgDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminImageUpdate",imgDTO);
	}
	
	@Override
	public int adminItemDelete(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemDelete",itemnum);
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
	public MemberDTO adminMemberDetailPoint(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminMemberDetailPoint",membernum);
	}

	@Override
	public int adminMemberDetailPointUpdate(String id, String pointAdd) {
		// TODO Auto-generated method stub
		Map<String, Object> Map = new HashMap<>();
        Map.put("id", id);
        Map.put("pointAdd", pointAdd);
		return sqlsession.update(namespace+".adminMemberDetailPointUpdate",Map);
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
	public int adminMemberRegisterAddr(AddressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminMemberRegisterAddr",addressDTO);
	}
	
	@Override
	public int adminCheckID(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminCheckID",memberDTO);
	}

	@Override
	public List<RankDTO> adminMemberRank() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminMemberRank");
	}

	@Override
	public int adminMemberRankUpdate(RankDTO rankDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberRankUpdate",rankDTO);
	}
	
	@Override
	public int adminMemberRankUpdate2(RankDTO rankDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberRankUpdate2",rankDTO);
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
	public List<OrderDTO> adminOrderSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
		params.put("endDate", endDate);
		params.put("paymethod", paymethod);
		params.put("state", state);
		return sqlsession.selectList(namespace+".adminOrderSearch",params);
	}

	@Override
	public List<ReturnDTO> adminOrderDetail(int buynum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminOrderDetail",buynum);
	}
	
	@Override
	public int adminOrderDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminOrderDetail2",returnnum);
	}
	
	@Override
	public int adminDeliveryCom() {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminDeliveryCom");
	}
	
	@Override
	public List<ReturnDTO> adminReturn() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReturn");
	}

	@Override
	public List<ReturnDTO> adminReturnSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
		params.put("endDate", endDate);
		params.put("paymethod", paymethod);
		params.put("state", state);
		return sqlsession.selectList(namespace+".adminReturnSearch",params);
	}

	@Override
	public List<ReturnDTO> adminReturnDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReturnDetail",returnnum);
	}
	
	@Override
	public ReturnDTO test2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".test2",returnnum);
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
	public List<ReturnDTO> adminExchangeSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
		params.put("endDate", endDate);
		params.put("paymethod", paymethod);
		params.put("state", state);
		return sqlsession.selectList(namespace+".adminExchangeSearch",params);
	}
	
	@Override
	public List<ReturnDTO> adminExchangeDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminExchangeDetail",returnnum);
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
	public List<Dr_reviewDTO> adminReviewSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] delStates) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<>();
		params.put("searchType", searchType);
		params.put("search", search);
		params.put("dateType", dateType);
		params.put("startDate", startDate);
		params.put("endDate", endDate);
		params.put("delStates", delStates);
		return sqlsession.selectList(namespace+".adminReviewSearch",params);
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
