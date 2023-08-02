package kr.co.dong.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.inject.spi.Message;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.boardDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dr_reviewDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.dv_order_itemDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.iv_itemDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import kr.co.dong.DTO.reviewDTO;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import java.util.Collections;
import org.springframework.web.bind.annotation.RequestParam;


@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	
	
	
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCSZPU97QQ4R0GWU";
	    String api_secret = "OWVWHWG9FJSVJEJJZ98U5VIBHXNSRPLS";
	    net.nurigo.java_sdk.api.Message coolsms = new net.nurigo.java_sdk.api.Message(api_key, api_secret);
	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", "01076125155" );    // 수신전화번호
	    params.put("from", "01076125155");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	     
	}				
		
	
	@Override
	public memberDTO memdetail(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memdetail(membernum, memberDTO);
	}


	@Override
	public List<addressDTO> addrlist(int membernum) {
		// TODO Auto-generated method stub
		return dao.addrlist(membernum);
	}

	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrupdate(addressDTO);
	}

	@Override
	public int addrdelete(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrdelete(addrnum);
	}

	@Override
	public int addrinsert(int membernum, addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrinsert(membernum, addressDTO);
	}

	@Override
	public int memdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memdelete(membernum, memberDTO);
	}


	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return dao.likedelete(zno);
	}
	@Override
	public int selectdelete(String zno) {
		// TODO Auto-generated method stub
		return dao.selectdelete(zno);
	}



	@Override
	public itemreturnDTO returndetail(int returnnum) {
		// TODO Auto-generated method stub
		return dao.returndetail(returnnum);
	}

	@Override
	public int returndelete(int returnnum) {
		// TODO Auto-generated method stub
		return dao.returndelete(returnnum);
	}


	@Override
	public int addrbasic(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrbasic(addrnum);
	}

	@Override
	public addressDTO addrdetail(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrdetail(addrnum);
	}


	@Override
	public memberDTO check(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.check(membernum, memberDTO);
	}

	@Override
	public memberDTO checkdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.checkdelete(membernum, memberDTO);
	}


	@Override
	public int mailupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.mailupdate(membernum, memberDTO);
	}


	@Override
	public int pwupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.pwupdate(membernum, memberDTO);
	}


	@Override
	public int telupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.telupdate(membernum, memberDTO);
	}


	@Override
	public int birthupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.birthupdate(membernum, memberDTO);
	}


//------------------------------------------------------------------------------------
	@Override
	public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount(membernum, keyword, searchtype, kind);
	}


	@Override
	public List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange(membernum, startIdx, endIdx, keyword, searchtype, kind);
	}


	@Override
	public int getTotalCount1(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount1(membernum);
	}


	@Override
	public List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange1(membernum, startIdx, endIdx);
	}

	@Override
	public int getStartIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return dao.getStartIndex(page, pageSize);
	}


	@Override
	public int getEndIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return dao.getEndIndex(page, pageSize);
	}


	@Override
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return dao.returninsert(itemreturnDTO);
	}


	   @Override
	   public Map login(Map<String, Object> map) throws Exception{
	      // TODO Auto-generated method stub
	      return dao.login(map);
	   }


	@Override
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderform(dv_orderDTO);
	}


	@Override
	public int getTotalCount2(int membernum, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount2(membernum, keyword, kind);
	}


	@Override
	public List<dv_orderDTO> getListByRange2(int membernum, int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange2(membernum, startIdx, endIdx, keyword, kind);
	}


	@Override
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderdetail(dv_orderDTO);
	}


	@Override
	public int orderstaupdate(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderstaupdate(dv_orderDTO);
		}


	@Override
	public int ordersta(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.ordersta(dv_orderDTO);
	}


	@Override
	public memberDTO findID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.findID(memberDTO);
	}


	@Override
	public memberDTO findPW(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.findPW(memberDTO);
	}


	@Override
	public int MemberRegister(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.MemberRegister(memberDTO);
	}


	@Override
	public int memberCheckID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memberCheckID(memberDTO);
	}


	@Override
	public int addrinsert1(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrinsert1(addressDTO);
	}


	@Override
	public int pwupdate1(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.pwupdate1(memberDTO);
	}
	
	//----------------------------------------카테고리 관련-----------------------------------------------------

	@Override
	public List<itemDTO> allItem() throws Exception {
	// TODO Auto-generated method stub
	return dao.allItem();
	}


	public List<itemDTO> bestItem() throws Exception {
	// TODO Auto-generated method stub
	return dao.bestItem();
	}
	//----------------------------------------cart/결제 관련-----------------------------------------------------

	@Override
	public List<cartDTO> list(int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.list(membernum);
	}

	@Override
	public List<cartDTO> list1(int cartno, int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.list1(cartno,membernum);
	}

	@Override
	public int cartDelete(int cartno) throws Exception {
	// TODO Auto-generated method stub
	return dao.cartDelete(cartno);
	}

	@Override
	public int cartClear(int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.cartClear(membernum);
	}

	@Override
	public void selectDelete(cartDTO cartno) throws Exception {
	// TODO Auto-generated method stub
	dao.selectDelete(cartno);

	}

	@Override
	public int orderInsert(dv_orderDTO dv_OrderDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.orderInsert(dv_OrderDTO);
	}



	@Override
	public List<cartDTO> list2(List<Integer> cartno,List<Integer> membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.list2(cartno,membernum);
	}

	@Override
	public int orderInsert1(dv_order_itemDTO dv_Order_itemDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.orderInsert1(dv_Order_itemDTO);
	}

	@Override
	public int orderInsert2(dv_order_itemDTO dv_Order_itemDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.orderInsert2(dv_Order_itemDTO);
	}

	@Override
	public int orderBuynum(dv_orderDTO dv_OrderDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.orderBuynum(dv_OrderDTO);
	}

	@Override
	public int cartUpdate(cartDTO CartDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.cartUpdate(CartDTO);
	}

	@Override
	public int cartUpdate1(cartDTO CartDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.cartUpdate1(CartDTO);
	}

	@Override
	public int pointUpdate(memberDTO MemberDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.pointUpdate(MemberDTO);
	}

	@Override
	public List<memberDTO> pointValue(memberDTO MemberDTO) throws Exception {
	// TODO Auto-generated method stub
	return dao.pointValue(MemberDTO);
	}

	@Override
	public int updateItemcnt(cartDTO CartDTO,int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.updateItemcnt(CartDTO,membernum);
	}

	@Override
	public List<itemDTO> itemOption(int itemnum) throws Exception {
	// TODO Auto-generated method stub
	return dao.itemOption(itemnum);
	}

	@Override
	public List<iv_itemDTO> colorSelect(String itemnum,int itemcolor) throws Exception {
	// TODO Auto-generated method stub
	return dao.colorSelect(itemnum, itemcolor);
	}

	@Override
	public List<iv_itemDTO> sizeSelect(String itemnum, int itemsize) throws Exception {
	// TODO Auto-generated method stub
	return dao.sizeSelect(itemnum, itemsize);
	}

	@Override
	public List<codetableDTO> colorValue(String codestring) throws Exception {
	// TODO Auto-generated method stub
	return dao.colorValue(codestring);
	}

	@Override
	public List<codetableDTO> sizeValue(String codestring) throws
	Exception {
	// TODO Auto-generated method stub
	return dao.sizeValue(codestring);
	}


	@Override
	public int updateOption(int cartno, int iv_itemnum) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.updateOption(cartno, iv_itemnum);

	}

	@Override
	public List<iv_itemDTO> iv_itemnumSerch(int itemcolor, int itemsize, int itemnum) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.iv_itemnumSerch(itemcolor, itemsize, itemnum);

	}

	@Override
	public List<codetableDTO> colorValue1(String codestring) throws Exception {
	// TODO Auto-generated method stub
	return dao.colorValue1(codestring);
	}


	@Override
	public List<codetableDTO> sizeValue1(String codestring1) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.sizeValue1(codestring1);

	}

	//----------------------------------------주소 관련-----------------------------------------------------






	@Override
	public List<addressDTO> addrSelect(int addrnum) {
	// TODO Auto-generated method stub
	return dao.addrSelect(addrnum);
	}


	@Override
	public List<addressDTO> addrSelect1(int membernum)
	{
	// TODO Auto-generated method stub
	return dao.addrSelect1(membernum);

	}

	@Override
	public List<addressDTO> addrlist1(int membernum) {
	// TODO Auto-generated method stub
	return dao.addrlist(membernum);
	}


	@Override
	public int itemcntsub(iv_itemDTO iv_itemDTO)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.itemcntsub(iv_itemDTO);
	}


	@Override
	public int itemcntsub1(List<iv_itemDTO> updateitemcList)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.itemcntsub1(updateitemcList);

	}

	//----------------------------------------board 관련-----------------------------------------------------


	@Override
	public List<boardDTO> boardList(int
	startIdx, int endIdx)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.boardList(startIdx,
	endIdx);
	}

	@Override
	public List<boardDTO> boardDetail(int bno)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.boardDetail(bno);

	}


	@Override
	public int viewCntUp(int bno)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.viewCntUp(bno);

	}

	@Override
	public List<memberDTO> boardRegister(int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.boardRegister(membernum);
	}


	@Override
	public int boardInsert(int membernum, boardDTO boardDTO)
	{
	// TODO Auto-generated method stub
	return dao.boardInsert(membernum, boardDTO);

	}


	@Override
	public int boardDelete(int bno) throws Exception {

	// TODO Auto-generated method stub
	return dao.boardDelete(bno);
	}


	@Override
	public List<boardDTO> boardUpdateView(int bno) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.boardUpdateView(bno);
	}


	@Override
	public int boardUpdate(boardDTO boardDTO)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.boardUpdate(boardDTO);

	}

	public int boardTotalCount() throws Exception {
	return dao.boardTotalCount();
	}

	public List<boardDTO> boardSearch(String searchField, String searchKeyword) throws Exception {
	// 검색 조건(searchField)과 검색어(searchKeyword)를 활용하여 검색 로직을 작성
	// 예시로는 제목(title), 작성자(id), 내용(content) 중에서 검색 조건을 선택하도록 가정
	if ("title".equals(searchField)) {
	return dao.boardSearch(searchField,searchKeyword);
	} else if ("id".equals(searchField)) {
	return dao.boardSearch(searchField,searchKeyword);
	} else if ("content".equals(searchField)) {
	return dao.boardSearch(searchField,searchKeyword);
	}

	return Collections.emptyList();
	}
	//----------------------------------------help 관련-----------------------------------------------------


	@Override
	public List<help_boardDTO> helpList(int
	startIdx, int endIdx)
	throws Exception {
	// TODO Auto-generated method stub
	return dao.helpList(startIdx, endIdx);

	}


	@Override
	public List<help_boardDTO> helpDetail(int hno) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.helpDetail(hno);
	}


	@Override
	public int helpviewCntUp(int hno) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.helpviewCntUp(hno);

	}

	@Override
	public List<memberDTO> helpRegister(int membernum) throws Exception {
	// TODO Auto-generated method stub
	return dao.helpRegister(membernum);
	}


	@Override
	public int helpInsert(int membernum, help_boardDTO help_boardDTO)
	{
	// TODO Auto-generated method stub
	return dao.helpInsert(membernum, help_boardDTO);
	}


	@Override
	public int helpDelete(int hno) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.helpDelete(hno);

	}

	@Override
	public List<help_boardDTO> helpUpdateView(int hno) throws Exception {
	// TODO Auto-generated method stub
	return dao.helpUpdateView(hno);
	}


	@Override
	public int helpUpdate(help_boardDTO help_boardDTO) throws Exception
	{
	// TODO Auto-generated method stub
	return dao.helpUpdate(help_boardDTO);
	}

	public int helpTotalCount() throws Exception {
	return dao.helpTotalCount();
	}

	public List<help_boardDTO> helpSearch(String searchField, String searchKeyword) throws Exception {
	// 검색 조건(searchField)과 검색어(searchKeyword)를 활용하여 검색 로직을 작성
	// 예시로는 제목(title), 작성자(id), 내용(content) 중에서 검색 조건을 선택하도록 가정
	if ("title".equals(searchField)) {
	return dao.helpSearch(searchField,searchKeyword);
	} else if ("id".equals(searchField)) {
	return dao.helpSearch(searchField,searchKeyword);
	} else if ("content".equals(searchField)) {
	return dao.helpSearch(searchField,searchKeyword);
	}

	return Collections.emptyList();
	}
	//----------------------------------------login 관련-----------------------------------------------------


	@Override
	public int joinMember(memberDTO
	memberDTO) {
	// TODO Auto-generated method stub
	return dao.joinMember(memberDTO);
	}

	@Override
	public boolean checkDuplicateId(String id) {
	int count = dao.checkDuplicateId(id);
	return count > 0;
	}
	
	//----------------------------------------itemdetail 관련-----------------------------------------------------

	@Override
	public itemDTO itemdetail(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.itemdetail(itemnum);
	}
	
	@Override
	public List<reviewDTO> getListByRangeRev(int itemnum, int startIdx, int pageSize, String keyword, String sortBy) throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRangeRev(itemnum, startIdx, pageSize, keyword, sortBy);
	}

	@Override
	public int getTotalCountRev(int itemnum, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCountRev(itemnum, keyword);
	}
	
	@Override
	public int interest(mylistDTO mylistDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.interest(mylistDTO);
	}

	@Override
	public boolean isAlreadyInterested(mylistDTO mylistDTO) throws Exception {
		// TODO Auto-generated method stub
	    return dao.isAlreadyInterested(mylistDTO);
	}

	@Override
	public int uninterest(mylistDTO mylistDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.uninterest(mylistDTO);
	}

	@Override
	public List<iv_itemDTO> iv_itemcolor(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.iv_itemcolor(itemnum);
	}

	@Override
	public List<iv_itemDTO> iv_itemsize(int itemnum, int itemcolor) throws Exception {
		// TODO Auto-generated method stub
		return dao.iv_itemsize(itemnum, itemcolor);
	}

	@Override
	public List<iv_itemDTO> iv_itemcntcheck(int itemnum, int itemcolor, int itemsize) throws Exception {
		// TODO Auto-generated method stub
		return dao.iv_itemcntcheck(itemnum, itemcolor, itemsize);
	}

	@Override
	public int orderadd(cartDTO cartDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.orderadd(cartDTO);
	}

	@Override
	public double rstarAvg(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.rstarAvg(itemnum);
	}

	@Override
	public int cartadd(cartDTO cartDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.cartadd(cartDTO);
	}

	@Override
	public List<cartDTO> cartoptioncheck(int membernum, int itemnum, int iv_itemnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.cartoptioncheck(membernum, itemnum, iv_itemnum);
	}

	@Override
	public int reviewlike(reviewDTO reviewDTO) {
		// TODO Auto-generated method stub
		return dao.reviewlike(reviewDTO);
	}

	@Override
	public int drreviewpost(dr_reviewDTO dr_reviewDTO) {
		// TODO Auto-generated method stub
		return dao.drreviewpost(dr_reviewDTO);
	}

	@Override
	public List<reviewDTO> listpage(int displayPost, int postNum) throws Exception {
		// TODO Auto-generated method stub
		return dao.listpage(displayPost, postNum);
	}

	@Override
	public List<reviewDTO> search(int displayPost, int postNum, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return dao.search(displayPost, postNum, keyword);
	}

	@Override
	public int searchcnt(String keyword) throws Exception {
		// TODO Auto-generated method stub
		return dao.searchcnt(keyword);
	}

	@Override
	public int reviewreport(reviewDTO reviewDTO) {
		// TODO Auto-generated method stub
		return dao.reviewreport(reviewDTO);
	}

	@Override
	public boolean reviewcheck(int reviewno, int membernum) {
		// TODO Auto-generated method stub
		return dao.reviewcheck(reviewno, membernum);
	}

	@Override
	public imgDTO imgdetail(int itemnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.imgdetail(itemnum);
	}
	
	//----------------------------------------
	
	@Override
	public List<dv_orderDTO> dv_orderlist() throws Exception {
		return dao.dv_orderlist();
	}

	@Override
	public List<help_boardDTO> helplist(int displayPost, int postNum) throws Exception {
		return dao.helplist(displayPost,postNum);
	}

	@Override
	public help_boardDTO helpdetail(int hno) throws Exception{
		return dao.helpdetail(hno);
	}

	@Override
	public int helpupdate(help_boardDTO helpupdate) throws Exception {
		return dao.helpupdate(helpupdate);
	}

	@Override
	public int helpcancel (int hno) throws Exception {
		return dao.helpcancel(hno);
	}

	@Override
	public int helpinsert(help_boardDTO helpinsert) throws Exception {
		return dao.helpinsert(helpinsert);
	}

	@Override
	public List<reviewDTO> reviewlist(int displayPost, int postNum) throws Exception {
		return dao.reviewlist(displayPost,postNum);
	}

	@Override
	public int reviewupdate(reviewDTO reviewupdate) throws Exception {
		return dao.reviewupdate(reviewupdate);
	}

	@Override
	public List<reviewDTO> noreviewlist(int displayPost, int postNum) throws Exception {
		return dao.noreviewlist(displayPost,postNum);
	}

	@Override
	public int reviewinsert(reviewDTO reviewinsert) throws Exception {
		return dao.reviewinsert(reviewinsert);
	}

	@Override
	public int reviewset(dv_orderDTO reviewset) throws Exception {
		return dao.reviewset(reviewset);
	}

	@Override
	public List<dv_orderDTO> reviewinsertdetail(int buynum) throws Exception {
		return dao.reviewinsertdetail(buynum);
	}

	@Override
	public reviewDTO reviewde(int reviewno) throws Exception {
		return dao.reviewde(reviewno);
	}

	@Override
	public int reviewdelete(int reviewno) throws Exception {
		return dao.reviewdelete(reviewno);
	}
	   @Override
	   public int getTotalCount(String keyword, String searchtype, String kind) throws Exception {
	      return dao.getTotalCount(keyword, searchtype, kind);
	   }


	   @Override
	   public List<itemreturnDTO> getListByRange(int startIdx, int endIdx, String keyword, String searchtype, String kind)
	         throws Exception {
	      return dao.getListByRange(startIdx, endIdx, keyword, searchtype, kind);
	   }


	@Override
	public int orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception {
		return dao.orderlistcartinsert(orderlistcartinsert);
	}

	@Override
	public int getTotalCount2(String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount2(keyword, kind);
	}

	@Override
	public List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange2(startIdx, endIdx, keyword, kind);
	}



	@Override
	public List<reviewDTO> reviewdetail(int reviewno) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewdetail(reviewno);
	}

	@Override
	public memberDTO mypoint(memberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.mypoint(memberDTO);
	}

	@Override
	public List<itemreturnDTO> returndetail() throws Exception {
		// TODO Auto-generated method stub
		return dao.returndetail();
	}

	@Override
	public int myhelpcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.myhelpcount();
	}

	@Override
	public int mynoreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.mynoreviewcount();
	}

	@Override
	public int myreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.myreviewcount();
	}

	@Override
	public int buyok(dv_orderDTO dv_orderDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.buyok(dv_orderDTO);
	}
}
