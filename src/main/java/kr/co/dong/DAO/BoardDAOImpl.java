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
	public dv_orderDTO orderdetail(int membernum,dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		dv_orderDTO.setMembernum(membernum);
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

	//----------------------------------------카테고리 관련-----------------------------------------------------
	public List<itemDTO> allItem() throws Exception{
	// TODO Auto-generated method stub
	return sqlsession.selectList(namespace + ".allItem");
	}

	public List<itemDTO> bestItem() throws Exception{
	// TODO Auto-generated method stub

	return sqlsession.selectList(namespace+".bestItem");
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
	public List<help_boardDTO> myhelplist(int membernum,int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("membernum",membernum);
		
		return sqlsession.selectList(namespace+".helplist",data);
	}

	@Override
	public help_boardDTO myhelpdetail(int hno) throws Exception {
		return sqlsession.selectOne(namespace+".helpdetail",hno);
	}

	@Override
	public int myhelpupdate(help_boardDTO helpupdate) throws Exception {
		return sqlsession.update(namespace+".helpupdate",helpupdate);
	}

	@Override
	public int myhelpcancel (int hno) throws Exception {
		return sqlsession.update(namespace+".helpcancel",hno);
	}


	@Override
	public List<reviewDTO> reviewlist(int membernum,int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("membernum", membernum);
		
		return sqlsession.selectList(namespace+".reviewlist",data);
	}

	@Override
	public int reviewupdate(reviewDTO reviewupdate) throws Exception {
		return sqlsession.update(namespace+".reviewupdate",reviewupdate);
	}

	@Override
	public List<reviewDTO> noreviewlist(int membernum,int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		data.put("membernum", membernum);
		
		return sqlsession.selectList(namespace+".noreviewlist",data);
	}

	@Override
	public int reviewinsert(int membernum,reviewDTO reviewDTO) throws Exception {
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		data.put("membernum", membernum);
		data.put("reviewDTO", reviewDTO);
		
		return sqlsession.insert(namespace+".reviewinsert",data);
	}

	@Override
	public int reviewset(int membernum,dv_orderDTO dv_orderDTO) throws Exception {
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		data.put("membernum", membernum);
		data.put("dv_orderDTO", dv_orderDTO);
		
		return sqlsession.update(namespace+".reviewset",data);
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
	public int orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception {
		return sqlsession.insert(namespace+".orderlistcartinsert",orderlistcartinsert);
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


	public int myhelpcount(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myhelpcount",membernum);
	}

	@Override
	public int mynoreviewcount(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".mynoreviewcount",membernum);
	}

	@Override
	public int myreviewcount(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myreviewcount",membernum);
	}

	@Override
	public int buyok(dv_orderDTO dv_orderDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".buyok",dv_orderDTO);
	}

	@Override
	public List<reviewDTO> reviewupdatedetail(int membernum, int reviewno) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("reviewno", reviewno);
		data.put("membernum", membernum);
		
		return sqlsession.selectList(namespace+".reviewupdatedetail",data);
	}
}
