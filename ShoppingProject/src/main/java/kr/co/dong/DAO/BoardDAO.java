package kr.co.dong.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

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
import kr.co.dong.DTO.ratinglistDTO;
import kr.co.dong.DTO.reviewDTO;


public interface BoardDAO {
	
	 //----------------------------------------관리자 관련 -----------------------------------------------------  
	
	public List<itemDTO> adminItem();
	
	public List<itemDTO> adminItemSearch(String searchType,String search, String dateType, String startDate, String endDate, String categoryType, String categoryType2);
	
	public int adminItemInsert(itemDTO itemDTO);
	
	public int adminImageInsert(imgDTO imgDTO);
	
	public itemDTO adminItemInsertItemnum();
	
	public int adminItemInsert2(int itemnum);
	
	public itemDTO adminItemDetail(int itemnum);
	
	public List<iv_itemDTO> adminItemDetail2(int itemnum);
	
	public int adminItemAdd(iv_itemDTO iv_itemDTO);
	
	public int adminItemUpdate(itemDTO itemDTO);
	
	public int adminImageUpdate(imgDTO imgDTO);
	
	public int adminItemDelete(int itemnum);
	
	public List<memberDTO> adminMember();
	
	public List<memberDTO> adminMemberSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public memberDTO adminMemberDetail(int membernum);
	
	public memberDTO adminMemberDetailPoint(int membernum);
	
	public int adminMemberDetailPointUpdate(String id, String pointAdd);
	
	public int adminMemberUpdate(memberDTO memberDTO);
	
	public int adminMemberDelete(memberDTO memberDTO);
	
	public int adminMemberRegister(memberDTO memberDTO);
	
	public int adminMemberRegisterAddr(addressDTO addressDTO);
	
	public int adminCheckID(memberDTO memberDTO);
	
	public List<ratinglistDTO> adminMemberRank();
	
	public int adminMemberRankUpdate(ratinglistDTO rankDTO);
	
	public int adminMemberRankUpdate2(ratinglistDTO rankDTO);
	
	public List<help_boardDTO> adminHelp();
	
	public List<help_boardDTO> adminHelpSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public help_boardDTO adminHelpDetail(int hno);
	
	public int adminHelpUpdate(help_boardDTO helpDTO);
	
	public List<dv_orderDTO> adminOrder();
	
	public List<dv_orderDTO> adminOrderSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<itemreturnDTO> adminOrderDetail(int buynum);
	
	public int adminOrderDetail2(int returnnum);

	public int adminDeliveryCom();
	
	public List<itemreturnDTO> adminReturn();
	
	public List<itemreturnDTO> adminReturnSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<itemreturnDTO> adminReturnDetail(int returnnum);
	
	public int adminReturnDetail2(int returnnum);
	
	public List<itemreturnDTO> adminExchange();
	
	public List<itemreturnDTO> adminExchangeSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<itemreturnDTO> adminExchangeDetail(int returnnum);
	
	public int adminExchangeDetail2(int returnnum);
	
	public List<dr_reviewDTO> adminReview();
	
	public List<dr_reviewDTO> adminReviewSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] delStates);
	
	public dr_reviewDTO adminReviewDetail(int drnum);
	
	public int adminReviewDetail2(int drnum);
	
	public int adminReviewDetail3(dr_reviewDTO dr_reviewDTO);
	
	
	 //----------------------------------------상품 리스트 관련-----------------------------------------------------  	
	
    // toplist 상품 목록 페이징
  	public List<itemDTO> getListByRangeToplist(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
      
    public int getTotalCountToplist(String keyword, String sortBy) throws Exception;
     
     // pants 상품 목록 페이징
     public List<itemDTO> getListByRangePants(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountPants(String keyword, String sortBy) throws Exception;

     // sale 상품 목록 페이징
     public List<itemDTO> getListByRangeSale(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountSale(String keyword, String sortBy) throws Exception;
     
     // new 상품 목록
     public List<itemDTO> Newitem() throws Exception;
     
     // skirt 상품 목록 페이징
     public List<itemDTO> getListByRangeSkirt(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountSkirt(String keyword, String sortBy) throws Exception;
     
     // Onepiece 상품 목록 페이징
     public List<itemDTO> getListByRangeOnepiece(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountOnepiece(String keyword, String sortBy) throws Exception;
        
     // Outer 상품 목록 페이징
     public List<itemDTO> getListByRangeOuter(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountOuter(String keyword, String sortBy) throws Exception;

     // Accessory 상품 목록 페이징
     public List<itemDTO> getListByRangeAccessory(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountAccessory(String keyword, String sortBy) throws Exception;
     
     // Hat 상품 목록 페이징
     public List<itemDTO> getListByRangeHat(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountHat(String keyword, String sortBy) throws Exception;
     
     // shoes 상품 목록 페이징
     public List<itemDTO> getListByRangeShoes(int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
        
     public int getTotalCountShoes(String keyword, String sortBy) throws Exception;
     	
	public List<itemDTO> allItem(int startIdx, int endIdx,int startprice, int endprice, int itemsortby, String search) throws Exception;
	
	public List<codetableDTO> allItemCategory() throws Exception;
	
	public int allItemTotalCount(int startprice, int endprice, String search) throws Exception;
	
	
	public List<itemDTO> man_girlItem(int startIdx, int endIdx,int startprice, int endprice, int itemsortby, String search) throws Exception;
	
	public List<codetableDTO> man_girlItemCategory() throws Exception;
	
	public int man_girlItemTotalCount(int startprice, int endprice, String search) throws Exception;
	
	
	public List<codetableDTO> colorFilter() throws Exception;
	public List<itemDTO> bestItem() throws Exception;
	
	 //---------------------------------------- 마이페이지 관련-----------------------------------------------------  
	
	//로그인
		public Map login(Map<String, Object> map)throws Exception;	
	//아이디 찾기, 비밀번호 찾기
		public memberDTO findID(memberDTO memberDTO);		
		public memberDTO findPW(memberDTO memberDTO);	
		//비밀번호 찾기 후 수정
		public int pwupdate1(memberDTO memberDTO);
	//회원가입
		public int MemberRegister(memberDTO memberDTO);
		public int memberCheckID(memberDTO memberDTO);
		public int addrinsert1(addressDTO addressDTO);
	//내정보수정
	//회원수정 본인확인
		public memberDTO check(int membernum, memberDTO memberDTO);
		//회원 상세조회
		public memberDTO memdetail(int membernum, memberDTO memberDTO);
		//메일 수정
		public int mailupdate(int membernum, memberDTO memberDTO);	
		//비밀번호 수정
		public int pwupdate(int membernum, memberDTO memberDTO);		
		//전화번호 수정
		public int telupdate(int membernum, memberDTO memberDTO);	
		//생일 수정
		public int birthupdate(int membernum, memberDTO memberDTO);
		
	//회원탈퇴
		//회원탈퇴 본인확인
		public memberDTO checkdelete(int membernum, memberDTO memberDTO);		
		//회원 탈퇴
		public int memdelete(int membernum, memberDTO memberDTO);
		
	//배송지관리
		//배송지 조회
		public List<addressDTO> addrlist(int membernum);
		//배송지 상세조회
		public addressDTO addrdetail(int addrnum);
		//배송지 수정
		public int addrupdate(addressDTO addressDTO);
		//기본배송지 수정
		public int addrbasic(int addrnum);
		//배송지 삭제
		public int addrdelete(int addrnum);
		//배송지 추가
		public int addrinsert(int membernum, addressDTO addressDTO);
		
	//내찜목록
		// 찜전체, 페이징			
		public int getTotalCount1(int membernum) throws Exception;
		
		List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx) throws Exception;

		//찜삭제
		public int likedelete(int zno);
		//찜선택삭제
		public int selectdelete(String zno);

//주문목록
		//주문목록
		//전체 조회, 검색, 페이징
		 public int getTotalCount2(int membernum, String keyword, String kind) throws Exception;
	     
		  List<dv_orderDTO> getListByRange2(int membernum, int startIdx, int endIdx, String keyword, String kind) throws Exception;
		//상세 이동
		public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO);
		//반품교환취소폼 이동
		public dv_orderDTO orderform(dv_orderDTO dv_orderDTO);
		//반품교환취소신청
		public int returninsert(itemreturnDTO itemreturnDTO);
		//상태 업데이트
		public int orderstaupdate(dv_orderDTO dv_orderDTO);
		//반품 취소 시 주문상태 업데이트
		public int ordersta(dv_orderDTO dv_orderDTO);
		
//반품/교환/취소 관리		
		//반품상세조회
		public itemreturnDTO returndetail(int returnnum);
		//반품 취소(식제)
		public int returndelete(int returnnum);
		//검색
		//public List<itemreturnDTO> rtsearchlist(String keyword, String searchtype);

		// 전체반품, 페이징, 검색
		public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception;				
		List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind) throws Exception;
//공통페이징	
		public int getStartIndex(int page, int pageSize) throws Exception;

		public int getEndIndex(int page, int pageSize) throws Exception;


		//----------------------------------------cart/결제 관련-----------------------------------------------------

		public List<cartDTO> list(int membernum) throws Exception;

		public List<iv_itemDTO> colorSelect(String itemnum, int itemcolor) throws Exception;

		public List<iv_itemDTO> sizeSelect(String itemnum, int itemsize) throws Exception;

		public List<codetableDTO> colorValue(String codestring) throws Exception;

		public List<codetableDTO> sizeValue(String codestring) throws Exception;

		public List<codetableDTO> colorValue1(String codestring) throws Exception;

		public List<codetableDTO> sizeValue1(String codestring1) throws Exception;

		public List<itemDTO> itemOption(int itemnum) throws Exception;

		public List<cartDTO> list1(int cartno,int membernum) throws Exception;
		
		public int cartCount() throws Exception;

		public int cartDelete(int cartno) throws Exception;

		public List<cartDTO> list2(@RequestParam("cartno") List<Integer> cartno,@RequestParam("membernum") List<Integer> membernum) throws Exception;

		public int cartClear(int membernum) throws Exception;

		public void selectDelete(cartDTO cartno) throws Exception;

		public int orderBuynum(dv_orderDTO dv_OrderDTO) throws Exception;

		public int orderInsert(dv_orderDTO dv_OrderDTO) throws Exception;

		public int orderInsert1(dv_order_itemDTO dv_Order_itemDTO) throws Exception;

		public int orderInsert2(dv_order_itemDTO dv_Order_itemDTO) throws Exception;

		public int cartUpdate(cartDTO CartDTO) throws Exception;

		public int cartUpdate1(cartDTO CartDTO) throws Exception;

		public int itemcntsub(iv_itemDTO iv_itemDTO) throws Exception;

		public int itemcntsub1(List<iv_itemDTO> updateitemcList) throws Exception;

		public int pointUpdate(memberDTO MemberDTO) throws Exception;

		public List<memberDTO> pointValue(memberDTO MemberDTO) throws Exception;

		public int updateItemcnt(cartDTO CartDTO,int membernum) throws Exception;

		public int updateOption(int cartno, int iv_itemnum) throws Exception;

		public List<iv_itemDTO> iv_itemnumSerch(int itemcolor, int itemsize, int itemnum) throws Exception;


		//----------------------------------------주소 관련-----------------------------------------------------
		public List<addressDTO> addrlist1(int membernum);
		public List<addressDTO> addrSelect(int addrnum);
		public List<addressDTO> addrSelect1(int membernum);

		//----------------------------------------board 관련-----------------------------------------------------
		public List<boardDTO> boardList(int startIdx, int endIdx) throws Exception;

		public List<boardDTO> boardDetail(int bno) throws Exception;

		public int viewCntUp(int bno) throws Exception;

		public List<memberDTO> boardRegister(int membernum) throws Exception;

		public int boardInsert(int membernum,boardDTO boardDTO);

		public int boardDelete(int bno) throws Exception;

		public List<boardDTO> boardUpdateView(int bno) throws Exception;

		public int boardUpdate(boardDTO boardDTO) throws Exception;

		public int boardTotalCount() throws Exception;

		public List<boardDTO> boardSearch(String searchField, String searchKeyword) throws Exception;
		//----------------------------------------help 관련-----------------------------------------------------

		public
		List<help_boardDTO> helpList(int
		startIdx, int endIdx)
		throws Exception;

		public List<help_boardDTO> helpDetail(int hno) throws Exception;


		public int helpviewCntUp(int hno) throws Exception;

		public List<memberDTO> helpRegister(int membernum) throws Exception;


		public int helpInsert(int membernum,help_boardDTO help_boardDTO);

		public int helpDelete(int hno) throws Exception;

		public List<help_boardDTO> helpUpdateView(int hno) throws Exception;


		public int helpUpdate(help_boardDTO help_boardDTO) throws Exception;


		public int helpTotalCount() throws Exception;

		public List<help_boardDTO> helpSearch(String searchField, String searchKeyword)
		throws Exception;
		//----------------------------------------login 관련-----------------------------------------------------

		public int joinMember(memberDTO MemberDTO);

		public int checkDuplicateId(String id);
		
		//----------------------------------------itemdetail 관련-----------------------------------------------------
		

		// 상품 상세조회
		public itemDTO itemdetail(int itemnum) throws Exception;
		
		// 옵션재고조회
		public List<iv_itemDTO> iv_itemcolor(int itemnum) throws Exception;
		
		public List<iv_itemDTO> iv_itemsize(int itemnum, int itemcolor) throws Exception;
		
		public List<iv_itemDTO> iv_itemcntcheck(int itemnum, int itemcolor, int itemsize) throws Exception;
		
		// 찜버튼 클릭
		public int interest(mylistDTO mylistDTO) throws Exception;
		
		public boolean isAlreadyInterested(mylistDTO mylistDTO) throws Exception;
		
		// 찜삭제
		public int uninterest(mylistDTO mylistDTO) throws Exception;
		
		// 바로구매
		public int orderadd(cartDTO cartDTO) throws Exception;
		
		// 장바구니 추가
		public int cartadd(cartDTO cartDTO) throws Exception;
		
		// 평점 평균
		public double rstarAvg(int itemnum) throws Exception;
		
		// 리뷰 목록 페이징
		public List<reviewDTO> getListByRangeRev(int itemnum, int startIdx, int pageSize, String keyword, String sortBy) throws Exception;
		    
		public int getTotalCountRev(int itemnum, String keyword) throws Exception;
		
		// 장바구니 옵션 중복 확인
	    public List<cartDTO> cartoptioncheck(int membernum, int itemnum, int iv_itemnum) throws Exception;
	    
	    // 리뷰 도움돼요 버튼
	    public int reviewlike(reviewDTO reviewDTO);
	    
	    // 리뷰 신고 버튼
	    public int drreviewpost(dr_reviewDTO dr_reviewDTO);
	    
	    //페이징
	  	public List<reviewDTO> listpage(int displayPost,int postNum) throws Exception;
	  	
	  	//검색
	  	public List<reviewDTO> search(int displayPost,int postNum, String keyword) throws Exception;
	  	
	  	//검색갯수
	  	public int searchcnt(String keyword) throws Exception;
	  	
	  	// 리뷰 신고 버튼
	    public int reviewreport(reviewDTO reviewDTO);
	    
	    public boolean reviewcheck(int reviewno, int membernum);
	    
	    // 파일 상세
	    public imgDTO imgdetail(int itemnum) throws Exception;
	    
	    public int selectCartNo() throws Exception;
	    
	    //----------------------------------------
	    public List<cartDTO> list() throws Exception;
		//내주문리스트
		public List<dv_orderDTO> dv_orderlist() throws Exception;
		//문의리스트
		public List<help_boardDTO> helplist(int displayPost, int postNum) throws Exception;
		//문의상세
		public help_boardDTO helpdetail(int hno) throws Exception;
		//문의수정
		public int helpupdate (help_boardDTO helpupdate) throws Exception;
		//문의취소
		public int helpcancel (int hno) throws Exception;
		//문의작성
		public int helpinsert (help_boardDTO helpinsert) throws Exception;
		//내미작성리뷰리스트
		public List<reviewDTO> noreviewlist(int displayPost, int postNum)throws Exception;
		//내작성리뷰리스트
		public List<reviewDTO> reviewlist(int displayPost, int postNum)throws Exception;
		//리뷰수정
		public int reviewupdate (reviewDTO reviewupdate) throws Exception;
		//리뷰작성
		public int reviewinsert (reviewDTO reviewinsert) throws Exception;
		//리뷰작성
		public int reviewset (dv_orderDTO reviewset) throws Exception;
		//리뷰작성상세
		public List<dv_orderDTO> reviewinsertdetail(int buynum) throws Exception;
		//리뷰내용(수정폼용)
		public reviewDTO reviewde (int reviewno) throws Exception;
		//리뷰삭제
		public int reviewdelete (int reviewno) throws Exception;
		// 반품전체 조회, 검색, 페이징
		public int getTotalCount(String keyword, String searchtype, String kind) throws Exception;
		         
		List<itemreturnDTO> getListByRange(int startIdx, int endIdx, String keyword, String searchtype, String kind) throws Exception;
		 
		//주문목록장바구니담기
		public int orderlistcartinsert (cartDTO orderlistcartinsert) throws Exception;
		
		//주문목록
		   //전체 조회, 검색, 페이징
		    public int getTotalCount2(String keyword, String kind) throws Exception;
		     
		     List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception;
		   //리뷰상세
		   public List<reviewDTO> reviewdetail(int reviewno) throws Exception;
		   //내등급포인트
		   public memberDTO mypoint (memberDTO memberDTO) throws Exception;
		   //반품/교환/취소 상세
		   public List<itemreturnDTO> returndetail() throws Exception;
		   //문의사항카운트
		   public int myhelpcount() throws Exception;
		   //미작성리뷰카운트
		   public int mynoreviewcount() throws Exception;
		   //작성리뷰카운트
		   public int myreviewcount() throws Exception;
		   //구매확정
		   public int buyok(dv_orderDTO dv_orderDTO) throws Exception;
	
}
