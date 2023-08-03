package kr.co.dong.DAO;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dr_reviewDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import kr.co.dong.DTO.ratinglistDTO;
import kr.co.dong.DTO.reviewDTO;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.dong.DTO.boardDTO;
import kr.co.dong.DTO.dv_order_itemDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.itemDTO;
import kr.co.dong.DTO.iv_itemDTO;

@Service
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlsession; 
	private String namespace = "kr.co.dong.BoardMapper";
	
	
	 //---------------------------------------- 관리자 관련 -----------------------------------------------------  
	
	public List<itemDTO> adminItem() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminItem");
	}
	
	@Override
	public List<itemDTO> adminItemSearch(String searchType, String search, String dateType, String startDate,
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
	public int adminItemInsert(itemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert",itemDTO);
	}

	@Override
	public int adminImageInsert(imgDTO imgDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminImageInsert",imgDTO);
	}
	
	@Override
	public itemDTO adminItemInsertItemnum() {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminItemInsertItemnum");
	}
	
	@Override
	public int adminItemInsert2(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminItemInsert2",itemnum);
	}

	@Override
	public itemDTO adminItemDetail(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminItemDetail",itemnum);
	}

	@Override
	public List<iv_itemDTO> adminItemDetail2(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminItemDetail2",itemnum);
	}
	
	@Override
	public int adminItemAdd(iv_itemDTO iv_itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemAdd",iv_itemDTO);
	}
	
	@Override
	public int adminItemUpdate(itemDTO itemDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemUpdate",itemDTO);
	}

	@Override
	public int adminImageUpdate(imgDTO imgDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminImageUpdate",imgDTO);
	}
	
	@Override
	public int adminItemDelete(int itemnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminItemDelete",itemnum);
	}
	
	@Override
	public List<memberDTO> adminMember() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminMember");
	}
	
	@Override
	public List<memberDTO> adminMemberSearch(String searchType, String search, String dateType, String startDate,
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
	public memberDTO adminMemberDetail(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminMemberDetail",membernum);
	}

	@Override
	public memberDTO adminMemberDetailPoint(int membernum) {
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
	public int adminMemberUpdate(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberUpdate",memberDTO);
	}
	
	@Override
	public int adminMemberDelete(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberDelete",memberDTO);
	}

	@Override
	public int adminMemberRegister(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminMemberRegister",memberDTO);
	}

	@Override
	public int adminMemberRegisterAddr(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".adminMemberRegisterAddr",addressDTO);
	}
	
	@Override
	public int adminCheckID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminCheckID",memberDTO);
	}

	@Override
	public List<ratinglistDTO> adminMemberRank() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminMemberRank");
	}

	@Override
	public int adminMemberRankUpdate(ratinglistDTO rankDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberRankUpdate",rankDTO);
	}
	
	@Override
	public int adminMemberRankUpdate2(ratinglistDTO rankDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminMemberRankUpdate2",rankDTO);
	}
	
	@Override
	public List<help_boardDTO> adminHelp() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminHelp");
	}

	@Override
	public List<help_boardDTO> adminHelpSearch(String searchType, String search, String dateType, String startDate,
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
	public help_boardDTO adminHelpDetail(int hno) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminHelpDetail",hno);
	}

	@Override
	public int adminHelpUpdate(help_boardDTO helpDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminHelpUpdate",helpDTO);
	}
	
	@Override
	public List<dv_orderDTO> adminOrder() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminOrder");
	}

	@Override
	public List<dv_orderDTO> adminOrderSearch(String searchType, String search, String dateType, String startDate,
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
	public List<itemreturnDTO> adminOrderDetail(int buynum) {
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
	public List<itemreturnDTO> adminReturn() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReturn");
	}

	@Override
	public List<itemreturnDTO> adminReturnSearch(String searchType, String search, String dateType, String startDate,
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
	public List<itemreturnDTO> adminReturnDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReturnDetail",returnnum);
	}
	
	@Override
	public int adminReturnDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReturnDetail2",returnnum);
	}
	
	@Override
	public List<itemreturnDTO> adminExchange() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminExchange");
	}

	@Override
	public List<itemreturnDTO> adminExchangeSearch(String searchType, String search, String dateType, String startDate,
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
	public List<itemreturnDTO> adminExchangeDetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminExchangeDetail",returnnum);
	}
	
	@Override
	public int adminExchangeDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminExchangeDetail2",returnnum);
	}

	@Override
	public List<dr_reviewDTO> adminReview() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".adminReview");
		
	}
	
	@Override
	public List<dr_reviewDTO> adminReviewSearch(String searchType, String search, String dateType, String startDate,
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
	public dr_reviewDTO adminReviewDetail(int drnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".adminReviewDetail",drnum);
	}

	@Override
	public int adminReviewDetail2(int drnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReviewDetail2",drnum);
	}

	@Override
	public int adminReviewDetail3(dr_reviewDTO dr_reviewDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".adminReviewDetail3",dr_reviewDTO);
	}
	
	 //----------------------------------------상품 리스트 관련-----------------------------------------------------  	
	
	@Override
	public List<itemDTO> getListByRangeToplist(int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeToplist", parameterMap);
	}
	
	@Override
	public int getTotalCountToplist(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountToplist", parameterMap);
	}
	
	@Override
	public List<itemDTO> getListByRangePants(int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangePants", parameterMap);
	}

	@Override
	public int getTotalCountPants(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountPants", parameterMap);
	}

	@Override
	public List<itemDTO> getListByRangeSale(int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeSale", parameterMap);
	}

	@Override
	public int getTotalCountSale(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountSale", parameterMap);
	}

	@Override
	public List<itemDTO> Newitem() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".Newitem");
	}

	@Override
	public List<itemDTO> getListByRangeSkirt(int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeSkirt", parameterMap);
	}

	@Override
	public int getTotalCountSkirt(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountSkirt", parameterMap);
	}

	@Override
	public List<itemDTO> getListByRangeOnepiece(int startIdx, int pageSize, String keyword, String sortBy)
			throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeOnepiece", parameterMap);
	}

	@Override
	public int getTotalCountOnepiece(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountOnepiece", parameterMap);
	}

	@Override
	public List<itemDTO> getListByRangeOuter(int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeOuter", parameterMap);
	}

	@Override
	public int getTotalCountOuter(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountOuter", parameterMap);
	}

	@Override
	public List<itemDTO> getListByRangeAccessory(int startIdx, int pageSize, String keyword, String sortBy)
			throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeAccessory", parameterMap);
	}

	@Override
	public int getTotalCountAccessory(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountAccessory", parameterMap);
	}

	@Override
	public List<itemDTO> getListByRangeHat(int startIdx, int pageSize, String keyword, String sortBy)
			throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeHat", parameterMap);
	}

	@Override
	public int getTotalCountHat(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountHat", parameterMap);
	}
	
	@Override
	public List<itemDTO> getListByRangeShoes(int startIdx, int pageSize, String keyword, String sortBy)
			throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
		return sqlsession.selectList(namespace+".getListByRangeShoes", parameterMap);
	}

	@Override
	public int getTotalCountShoes(String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
		   parameterMap.put("sortBy", sortBy);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountShoes", parameterMap);
	}
	

	public List<itemDTO> allItem(int startIdx, int endIdx,int startprice, int endprice, int itemsortby, String search) throws Exception{
		// TODO Auto-generated method stub
	    Map<String, Object> parameterMap = new HashMap<>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("startprice", startprice);
	    parameterMap.put("endprice", endprice);
	    parameterMap.put("itemsortby", itemsortby);
	    parameterMap.put("search", search);
		return sqlsession.selectList(namespace + ".allItem",parameterMap);
	}
	
	public List<codetableDTO> allItemCategory() throws Exception{
		// TODO Auto-generated method stub

		return sqlsession.selectList(namespace+".allItemCategory");
	}
	
	@Override
	public int allItemTotalCount(int startprice, int endprice, String search) throws Exception{
		 Map<String, Object> parameterMap = new HashMap<>();
	    parameterMap.put("startprice", startprice);
	    parameterMap.put("endprice", endprice);
	    parameterMap.put("search", search);
	    return sqlsession.selectOne(namespace + ".allItemTotalCount",parameterMap);
	}
	
	
	
	public List<itemDTO> man_girlItem(int startIdx, int endIdx,int startprice, int endprice, int itemsortby, String search) throws Exception{
		// TODO Auto-generated method stub
	    Map<String, Object> parameterMap = new HashMap<>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("startprice", startprice);
	    parameterMap.put("endprice", endprice);
	    parameterMap.put("itemsortby", itemsortby);
	    parameterMap.put("search", search);
		return sqlsession.selectList(namespace + ".man_girlItem",parameterMap);
	}
	
	public List<codetableDTO> man_girlItemCategory() throws Exception{
		// TODO Auto-generated method stub

		return sqlsession.selectList(namespace+".man_girlItemCategory");
	}
	
	@Override
	public int man_girlItemTotalCount(int startprice, int endprice, String search) throws Exception{
		 Map<String, Object> parameterMap = new HashMap<>();
	    parameterMap.put("startprice", startprice);
	    parameterMap.put("endprice", endprice);
	    parameterMap.put("search", search);
	    return sqlsession.selectOne(namespace + ".man_girlItemTotalCount",parameterMap);
	}
	

	

	
	
	public List<itemDTO> bestItem() throws Exception{
		// TODO Auto-generated method stub

		return sqlsession.selectList(namespace+".bestItem");
	}
	
	public List<codetableDTO> colorFilter() throws Exception{
		// TODO Auto-generated method stub

		return sqlsession.selectList(namespace+".colorFilter");
	}
	
	 //---------------------------------------- 마이페이지 관련-----------------------------------------------------  
	
	@Override
	public memberDTO memdetail(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".memdetail", data );
	}
	
	@Override
	public List<addressDTO> addrlist(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".addrlist", membernum);
	}
	@Override
	public addressDTO addrdetail(int addrnum) {
		// TODO Auto-generated method stub	
		return sqlsession.selectOne(namespace+".addrdetail", addrnum);
		
	}
	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrupdate",addressDTO); 
	}
	@Override
	public int addrdelete(int addrnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrdelete",addrnum);
	}
	@Override
	public int addrinsert(int membernum, addressDTO addressDTO) {
		// TODO Auto-generated method stub		
		addressDTO.setMembernum(membernum);	
		return sqlsession.insert(namespace+".addrinsert",addressDTO);
	}
	@Override
	public int memdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.delete(namespace+".memdelete",data);
	}
	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".likedelete", zno);
	}
	@Override
	public int selectdelete(String zno) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".selectdelete", zno);
	}
	@Override
	public itemreturnDTO returndetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".returndetail",returnnum);
	}
	@Override
	public int returndelete(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".returndelete",returnnum);
	}

	
	@Override
	public int addrbasic(int addrnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrbasic", addrnum);
	}

	@Override
	public memberDTO check(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		
		return sqlsession.selectOne(namespace+".check", data);
	}
	@Override
	public memberDTO checkdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".checkdelete", data);
	}

	@Override
	public int mailupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("email", memberDTO.getEmail());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".mailupdate", data);
	}

	@Override
	public int pwupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("pw", memberDTO.getPw());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".pwupdate", data);
	}

	@Override
	public int telupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("tel", memberDTO.getTel());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".telupdate", data);
	}

	@Override
	public int birthupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("birth", memberDTO.getBirth());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".birthupdate", data);
	}

//-------------------------------------------------------------------------------
	@Override
	public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
			data.put("searchtype", searchtype);
			data.put("keyword", keyword);
			data.put("kind", kind);
			data.put("membernum", membernum);
			return sqlsession.selectOne(namespace+".getTotalCount", data);  
	}

	@Override
	public List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind)
			throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("keyword", keyword);
	    parameterMap.put("searchtype", searchtype);
	    parameterMap.put("kind", kind);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange", parameterMap);
	}


	@Override
	public int getTotalCount1(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".getTotalCount1", membernum);  
	}

	@Override
	public List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx)
			throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange1", parameterMap);
	}
	@Override
	public int getStartIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return (page - 1) * pageSize;
	}

	@Override
	public int getEndIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return page * pageSize;
	}

	@Override
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".returninsert", itemreturnDTO);  
	}

	   @Override
	   
	   public Map login(Map<String, Object> map) throws Exception{
	      // TODO Auto-generated method stub
	      return sqlsession.selectOne(namespace+".login", map);
	   }
//주문 목록
	@Override
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".orderform", dv_orderDTO);
	}

	@Override
	public int getTotalCount2(int membernum, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("keyword", keyword);
		data.put("kind", kind);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".getTotalCount2", data);  
	}

	@Override
	public List<dv_orderDTO> getListByRange2(int membernum,int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("keyword", keyword);
	    parameterMap.put("kind", kind);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange2", parameterMap);
	}

	@Override
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".orderdetail", dv_orderDTO);
	}

	@Override
	public int orderstaupdate(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".orderstaupdate", dv_orderDTO);
	}

	@Override
	public int ordersta(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".ordersta", dv_orderDTO);
	}

	@Override
	public memberDTO findID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".findID", memberDTO);
	}

	@Override
	public memberDTO findPW(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".findPW", memberDTO);
	}

	@Override
	public int MemberRegister(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".MemberRegister", memberDTO);
	}

	@Override
	public int memberCheckID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".memberCheckID", memberDTO);
	}

	@Override
	public int addrinsert1(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".addrinsert1", addressDTO);
	}

	@Override
	public int pwupdate1(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".pwupdate1", memberDTO);
	}

	//----------------------------------------cart/결제 관련-----------------------------------------------------

	@Override
	public List<cartDTO> list(int membernum) throws Exception{
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".list", membernum);
	}

	@Override
	public List<cartDTO> list1(int cartno,int membernum) throws Exception{
	// TODO Auto-generated method stub
	Map<String, Object> params = new HashMap<>();
	params.put("cartno", cartno);
	params.put("membernum", membernum);

	return sqlsession.selectList(namespace+".list1", params);
	}
	
	@Override
	public int cartCount() throws Exception{
	// TODO Auto-generated method stub
	return sqlsession.selectOne(namespace+".cartCount");
	}

	@Override
	public int cartDelete(int cartno) throws Exception {
	// TODO Auto-generated method stub

	return sqlsession.delete(namespace+".cartDelete", cartno);
	}

	@Override
	public int cartClear(int membernum) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.delete(namespace+".cartClear", membernum);
	}

	@Override
	public void selectDelete(cartDTO cartno) throws Exception {
	// TODO Auto-generated method stub
	sqlsession.delete(namespace+".selectDelete",cartno);

	}

	@Override
	public int orderInsert(dv_orderDTO dv_OrderDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.insert(namespace+".orderInsert", dv_OrderDTO);
	}

	public List<cartDTO> list2(@RequestParam("cartno")List<Integer> cartno,@RequestParam("membernum") List<Integer> membernum) throws Exception {
	Map<String, Object> params = new HashMap<>();
	params.put("cartno", cartno);
	params.put("membernum", membernum);

	return sqlsession.selectList(namespace + ".list2", params);
	}

	@Override
	public int orderInsert1(dv_order_itemDTO dv_Order_itemDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.insert(namespace+".orderInsert1", dv_Order_itemDTO);
	}

	@Override
	public int orderInsert2(dv_order_itemDTO dv_Order_itemDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.insert(namespace+".orderInsert2", dv_Order_itemDTO);
	}

	@Override
	public int orderBuynum(dv_orderDTO dv_OrderDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectOne(namespace+".orderBuynum", dv_OrderDTO);
	}

	@Override
	public int cartUpdate(cartDTO CartDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.update(namespace+".cartUpdate", CartDTO);
	}

	@Override
	public int cartUpdate1(cartDTO CartDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.update(namespace+".cartUpdate1", CartDTO);
	}


	@Override
	public int pointUpdate(memberDTO MemberDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.update(namespace+".pointUpdate", MemberDTO);
	}

	@Override
	public List<memberDTO> pointValue(memberDTO MemberDTO) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".pointValue", MemberDTO);
	}

	@Override
	public int updateItemcnt(cartDTO CartDTO, int membernum) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.update(namespace+".updateItemcnt", CartDTO);
	}


	@Override
	public List<itemDTO> itemOption(int itemnum) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".itemOption", itemnum);
	}


	@Override
	public List<iv_itemDTO> colorSelect(String itemnum,int itemcolor) throws Exception
	{
	// TODO Auto-generated method stub
	Map<String,
	Object> params = new HashMap<>();
	params.put("itemnum", itemnum);
	params.put("itemcolor", itemcolor);
	return sqlsession.selectList(namespace+".colorSelect", params);

	}

	@Override
	public List<iv_itemDTO> sizeSelect(String itemnum, int itemsize) throws Exception
	{
	// TODO Auto-generated method stub
	Map<String,
	Object> params = new HashMap<>();
	params.put("itemnum", itemnum);
	params.put("itemsize", itemsize);
	return sqlsession.selectList(namespace+".sizeSelect", params);
	}

	@Override
	public List<codetableDTO> colorValue(String codestring) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".colorValue", codestring);
	}

	@Override
	public List<codetableDTO> sizeValue(String codestring) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".sizeValue", codestring);

	}

	@Override
	public int updateOption(int cartno, int iv_itemnum) throws Exception
	{
	// TODO Auto-generated method stub
	Map<String,
	Object> optionData = new HashMap<>();
	optionData.put("cartno", cartno);
	optionData.put("iv_itemnum", iv_itemnum);
	return sqlsession.update(namespace+".updateOption", optionData);

	}

	@Override
	public List<iv_itemDTO> iv_itemnumSerch(int itemcolor, int itemsize, int itemnum) throws Exception
	{
	// TODO Auto-generated method stub
	Map<String,
	Object> searchData = new HashMap<>();
	searchData.put("itemcolor", itemcolor);
	searchData.put("itemsize", itemsize);
	searchData.put("itemnum", itemnum);
	return sqlsession.selectList(namespace+".iv_itemnumSerch", searchData);
	}

	@Override
	public List<codetableDTO> colorValue1(String codestring) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".colorValue1", codestring);
	}

	@Override
	public List<codetableDTO> sizeValue1(String codestring1) throws Exception {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".sizeValue1", codestring1);

	}

	//----------------------------------------주소 관련-----------------------------------------------------



	@Override
	public List<addressDTO> addrSelect(int addrnum) {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".addrSelect",addrnum);
	}


	@Override
	public List<addressDTO> addrSelect1(int
	membernum)
	{
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".addrSelect1",membernum);
	}

	@Override
	public List<addressDTO> addrlist1(int membernum) {
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".addrlist1",membernum);

	}

	@Override
	public int itemcntsub(iv_itemDTO iv_itemDTO) throws Exception {
	return sqlsession.update(namespace+".itemcntsub", iv_itemDTO);
	}

	@Override
	public int itemcntsub1(List<iv_itemDTO> updateitemcList)
	throws Exception {
	return sqlsession.update(namespace+".itemcntsub1", updateitemcList);
	}

	//----------------------------------------board 관련-----------------------------------------------------
	@Override
	public List<boardDTO> boardList(int startIdx, int endIdx) throws Exception{

	// TODO Auto-generated method stub
	Map<String,
	Object> parameterMap = new HashMap<>();

	parameterMap.put("startIdx", startIdx);
	parameterMap.put("endIdx", endIdx);

	return sqlsession.selectList(namespace + ".boardList",
	parameterMap);
	}


	@Override
	public List<boardDTO> boardDetail(int bno) throws Exception{

	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".boardDetail", bno);

	}

	@Override
	public int viewCntUp(int bno)
	throws Exception {
	return sqlsession.update(namespace+".viewCntUp", bno);
	}

	@Override
	public List<memberDTO> boardRegister(int membernum) throws Exception{

	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".boardRegister", membernum);

	}

	@Override
	public int boardInsert(int membernum,boardDTO boardDTO)
	{
	// TODO Auto-generated method stub
	boardDTO.setMembernum(membernum);
	return sqlsession.insert(namespace+".boardInsert",boardDTO);

	}

	@Override
	public int boardDelete(int bno) throws Exception {
	return sqlsession.update(namespace+".boardDelete", bno);
	}

	@Override
	public List<boardDTO> boardUpdateView(int membernum)
	throws Exception{
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".boardUpdateView", membernum);
	}


	@Override
	public int boardUpdate(boardDTO boardDTO) throws Exception {
	return sqlsession.update(namespace+".boardUpdate", boardDTO);

	}

	@Override
	public int boardTotalCount() throws Exception{
	return sqlsession.selectOne(namespace + ".boardTotalCount");
	}

	@Override
	public List<boardDTO> boardSearch(String searchField, String searchKeyword) throws Exception{

	// TODO Auto-generated method stub
	Map<String,
	Object> params = new HashMap<>();
	params.put("searchField", searchField);
	params.put("searchKeyword", searchKeyword);
	return sqlsession.selectList(namespace+".boardSearch", params);
	}
	//----------------------------------------help 관련-----------------------------------------------------

	@Override
	public List<help_boardDTO> helpList(int
	startIdx, int endIdx) throws Exception{

	// TODO Auto-generated method stub
	Map<String,
	Object> parameterMap = new HashMap<>();

	parameterMap.put("startIdx", startIdx);
	parameterMap.put("endIdx", endIdx);

	return sqlsession.selectList(namespace + ".helpList",
	parameterMap);
	}

	@Override
	public List<help_boardDTO> helpDetail(int hno) throws Exception{
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".helpDetail", hno);
	}

	@Override
	public int helpviewCntUp(int hno) throws Exception {
	return sqlsession.update(namespace+".helpviewCntUp", hno);
	}

	@Override
	public List<memberDTO> helpRegister(int membernum) throws Exception{

	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".helpRegister", membernum);

	}

	@Override
	public int helpInsert(int membernum,help_boardDTO help_boardDTO)
	{
	// TODO Auto-generated method stub
	help_boardDTO.setMembernum(membernum);
	return sqlsession.insert(namespace+".helpInsert",help_boardDTO);

	}

	@Override
	public int helpDelete(int hno) throws Exception {
	return sqlsession.update(namespace+".helpDelete", hno);
	}

	@Override
	public List<help_boardDTO> helpUpdateView(int membernum) throws Exception{

	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace+".helpUpdateView", membernum);

	}

	@Override
	public int helpUpdate(help_boardDTO help_boardDTO) throws Exception {
	return sqlsession.update(namespace+".helpUpdate", help_boardDTO);
	}

	@Override
	public int helpTotalCount() throws Exception{
	return sqlsession.selectOne(namespace + ".helpTotalCount");
	}

	@Override
	public List<help_boardDTO> helpSearch(String searchField, String searchKeyword) throws Exception{

	// TODO Auto-generated method stub
	Map<String, Object> params = new HashMap<>();
	params.put("searchField", searchField);
	params.put("searchKeyword", searchKeyword);
	return sqlsession.selectList(namespace+".helpSearch", params);

	}

	//----------------------------------------login 관련-----------------------------------------------------


	@Override
	public int joinMember(memberDTO
	memberDTO) {
	// TODO Auto-generated method stub
	return sqlsession.insert(namespace+".joinMember",
	memberDTO);
	}

	@Override
	public int checkDuplicateId(String id)
	{
	// TODO Auto-generated method stub
	return sqlsession.selectOne(namespace+".checkDuplicateId", id);

	}

	
	//----------------------------------------itemdetail 관련-----------------------------------------------------
	
	@Override
	public itemDTO itemdetail(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".itemdetail", itemnum);
	}

	@Override
	public List<reviewDTO> getListByRangeRev(int itemnum, int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("pageSize", pageSize);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("sortBy", sortBy);
	       parameterMap.put("itemnum", itemnum);
		return sqlsession.selectList(namespace+".getListByRangeRev", parameterMap);
	}

	@Override
	public int getTotalCountRev(int itemnum, String keyword) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("itemnum", itemnum);
	       parameterMap.put("keyword", keyword);
		return sqlsession.selectOne(namespace+".getTotalCountRev", parameterMap);
	}

	@Override
	public int interest(mylistDTO mylistDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".interest", mylistDTO);
	}

	@Override
	public boolean isAlreadyInterested(mylistDTO mylistDTO) throws Exception {
		int count = sqlsession.selectOne(namespace+".isAlreadyInterested", mylistDTO);
	    return count > 0;
	}

	@Override
	public int uninterest(mylistDTO mylistDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".uninterest", mylistDTO);
	}

	@Override
	public List<iv_itemDTO> iv_itemcolor(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".iv_itemcolor", itemnum);
	}

	@Override
	public List<iv_itemDTO> iv_itemsize(int itemnum, int itemcolor) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("itemnum", itemnum);
	       parameterMap.put("itemcolor", itemcolor);
		return sqlsession.selectList(namespace+".iv_itemsize", parameterMap);
	}

	@Override
	public List<iv_itemDTO> iv_itemcntcheck(int itemnum, int itemcolor, int itemsize) throws Exception {
		Map<String, Object> parameterMap = new HashMap<>();
	       parameterMap.put("itemnum", itemnum);
	       parameterMap.put("itemcolor", itemcolor);
	       parameterMap.put("itemsize", itemsize);
		return sqlsession.selectList(namespace+".iv_itemcntcheck", parameterMap);
	}

	@Override
	public int orderadd(cartDTO cartDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".orderadd", cartDTO);
	}

	@Override
	public double rstarAvg(int itemnum) throws Exception {
	    Double avg = sqlsession.selectOne(namespace + ".rstarAvg", itemnum);
	    return avg != null ? avg : 0.0;
	}

	@Override
	public int cartadd(cartDTO cartDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".cartadd", cartDTO);
	}

	@Override
	public List<cartDTO> cartoptioncheck(int membernum, int itemnum, int iv_itemnum) throws Exception {
		int cartstate = 1;
	    Map<String, Object> parameterMap = new HashMap<>();
	    parameterMap.put("membernum", membernum);
	    parameterMap.put("itemnum", itemnum);
	    parameterMap.put("iv_itemnum", iv_itemnum);
	    parameterMap.put("cartstate", cartstate);
	    return sqlsession.selectList(namespace+".cartoptioncheck", parameterMap);
	}

	@Override
	public int reviewlike(reviewDTO reviewDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".reviewlike", reviewDTO);
	}

	@Override
	public int drreviewpost(dr_reviewDTO dr_reviewDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".drreviewpost", dr_reviewDTO);
	}

	// 페이징
	@Override
	public List<reviewDTO> listpage(int displayPost, int postNum) throws Exception {
		 HashMap<String, Integer> data = new HashMap<String, Integer>();
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 return sqlsession.selectList(namespace + ".listpage", data);
	}

	// 검색 + 페이징 (내용 검색으로 고정)
	@Override
	public List<reviewDTO> search(int displayPost, int postNum, String keyword) throws Exception {
	    HashMap<String, Object> data = new HashMap<String, Object>();
	    data.put("displayPost", displayPost);
	    data.put("postNum", postNum);
	    data.put("keyword", keyword);
	    return sqlsession.selectList(namespace + ".search", data);
	}
	
	// 검색 책 갯수 (내용 검색으로 고정)
	@Override
	public int searchcnt(String keyword) throws Exception {
	    HashMap<String, Object> data = new HashMap<String, Object>();
	    data.put("keyword", keyword);
	    return sqlsession.selectOne(namespace + ".searchcnt", data);
	}

	@Override
	public int reviewreport(reviewDTO reviewDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".reviewreport", reviewDTO);
	}

	@Override
	public boolean reviewcheck(int reviewno, int membernum) {
		HashMap<String, Object> data = new HashMap<String, Object>();
	    data.put("reviewno", reviewno);
	    data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".reviewcheck", data);
	}

	@Override
	public imgDTO imgdetail(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".imgdetail", itemnum);
	}
	
	   @Override
	   public int selectCartNo() throws Exception {
	      // TODO Auto-generated method stub
	      return sqlsession.selectOne(namespace+".selectCartNo");
	   }
	//----------------------------------------

	@Override
	public List<cartDTO> list() {
		return sqlsession.selectList(namespace+".list");
	}

	@Override
	public List<dv_orderDTO> dv_orderlist() throws Exception {
		return sqlsession.selectList(namespace+".dv_orderlist");
	}

	@Override
	public List<help_boardDTO> helplist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".helplist",data);
	}

	@Override
	public help_boardDTO helpdetail(int hno) throws Exception {
		return sqlsession.selectOne(namespace+".helpdetail",hno);
	}

	@Override
	public int helpupdate(help_boardDTO helpupdate) throws Exception {
		return sqlsession.update(namespace+".helpupdate",helpupdate);
	}

	@Override
	public int helpcancel (int hno) throws Exception {
		return sqlsession.update(namespace+".helpcancel",hno);
	}

	@Override
	public int helpinsert(help_boardDTO helpinsert) throws Exception {
		return sqlsession.insert(namespace+".helpinsert",helpinsert);
	}

	@Override
	public List<reviewDTO> reviewlist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".reviewlist",data);
	}

	@Override
	public int reviewupdate(reviewDTO reviewupdate) throws Exception {
		return sqlsession.update(namespace+".reviewupdate",reviewupdate);
	}

	@Override
	public List<reviewDTO> noreviewlist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".noreviewlist",data);
	}

	@Override
	public int reviewinsert(reviewDTO reviewinsert) throws Exception {
		return sqlsession.insert(namespace+".reviewinsert",reviewinsert);
	}

	@Override
	public int reviewset(dv_orderDTO reviewset) throws Exception {
		return sqlsession.update(namespace+".reviewset",reviewset);
	}

	@Override
	public List<dv_orderDTO> reviewinsertdetail(int buynum) throws Exception {
		return sqlsession.selectList(namespace+".reviewinsertdetail",buynum);
	}

	@Override
	public reviewDTO reviewde(int reviewno) throws Exception {
		return sqlsession.selectOne(namespace+".reviewde",reviewno);
	}

	@Override
	public int reviewdelete(int reviewno) throws Exception {
		return sqlsession.update(namespace+".reviewdelete",reviewno);
	}
	@Override
	   public int getTotalCount(String keyword, String searchtype, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언   
	         data.put("searchtype", searchtype);
	         data.put("keyword", keyword);
	         data.put("kind", kind);
	         return sqlsession.selectOne(namespace+".getTotalCount", data);  
	   }

	   @Override
	   public List<itemreturnDTO> getListByRange(int startIdx, int endIdx, String keyword, String searchtype, String kind)
	         throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("endIdx", endIdx);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("searchtype", searchtype);
	       parameterMap.put("kind", kind);
	       return sqlsession.selectList(namespace + ".getListByRange", parameterMap);
	   }

	@Override
	public int orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception {
		return sqlsession.insert(namespace+".orderlistcartinsert",orderlistcartinsert);
	}

	   @Override
	   public int getTotalCount2(String keyword, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언   
	      data.put("keyword", keyword);
	      data.put("kind", kind);
	      return sqlsession.selectOne(namespace+".getTotalCount2", data);  
	   }

	   @Override
	   public List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("endIdx", endIdx);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("kind", kind);
	       return sqlsession.selectList(namespace + ".getListByRange2", parameterMap);
	   }



	@Override
	public List<reviewDTO> reviewdetail(int reviewno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".reviewdetail",reviewno);
	}

	@Override
	public memberDTO mypoint(memberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".mypoint",memberDTO);
	}

	@Override
	public List<itemreturnDTO> returndetail() throws Exception{
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".returndetail");
	}

	public int myhelpcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myhelpcount");
	}

	@Override
	public int mynoreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".mynoreviewcount");
	}

	@Override
	public int myreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myreviewcount");
	}

	@Override
	public int buyok(dv_orderDTO dv_orderDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".buyok",dv_orderDTO);
	}
}
