package kr.co.dong.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.reviewDTO;

@Service
public interface BoardService {
	
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
	//----------------------------------------------------------------------------------   
	public int getStartIndex(int page, int pageSize) throws Exception;
	
	public int getEndIndex(int page, int pageSize) throws Exception;
	//주문목록장바구니담기
	public int orderlistcartinsert (cartDTO orderlistcartinsert) throws Exception;
	
	//주문목록
	   //전체 조회, 검색, 페이징
	    public int getTotalCount2(String keyword, String kind) throws Exception;
	     
	     List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception;
	   //상세 이동
	   public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO);
	   //반품교환취소폼 이동
	   public dv_orderDTO orderform(dv_orderDTO dv_orderDTO);
	   //반품교환취소신청
	   public int returninsert(itemreturnDTO itemreturnDTO);
	   //주문상태 업데이트
	   public int orderstaupdate(dv_orderDTO dv_orderDTO);
	   //반품 취소 시 주문상태 업데이트
	   public int ordersta(dv_orderDTO dv_orderDTO);
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
