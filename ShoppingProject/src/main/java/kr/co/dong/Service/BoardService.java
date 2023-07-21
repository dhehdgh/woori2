package kr.co.dong.Service;

import java.util.List;

import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;

public interface BoardService {
	
	public List<ItemDTO> adminItem();
	
	public List<ItemDTO> adminItemSearch(String searchType,String search, String dateType, String startDate, String endDate, String categoryType, String categoryType2);
	
	public int adminItem2();
	
	public int adminItemInsert(ItemDTO itemDTO);
	
	public ItemDTO adminItemInsertItemnum();
	
	public int adminItemInsert2(int itemnum);
	
	public ItemDTO adminItemDetail(int itemnum);
	
	public List<Iv_itemDTO> adminItemDetail2(int itemnum);
	
	public int adminItemAdd(Iv_itemDTO iv_itemDTO);
	
	public int adminItemUpdate(ItemDTO itemDTO);
	
	public List<MemberDTO> adminMember();
	
	public List<MemberDTO> adminMemberSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public MemberDTO adminMemberDetail(int membernum);
	
	public int adminMemberUpdate(MemberDTO memberDTO);
	
	public int adminMemberDelete(MemberDTO memberDTO);
	
	public int adminMemberRegister(MemberDTO memberDTO);
	
	public int adminCheckID(MemberDTO memberDTO);
	
	public List<HelpDTO> adminHelp();
	
	public List<HelpDTO> adminHelpSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public HelpDTO adminHelpDetail(int hno);
	
	public int adminHelpUpdate(HelpDTO helpDTO);
	
	public List<OrderDTO> adminOrder();
	
	public List<ReturnDTO> adminReturn();
	
	public ReturnDTO adminReturnDetail(int returnnum);
	
	public int adminReturnDetail2(int returnnum);
	
	public List<ReturnDTO> adminExchange();
	
	public ReturnDTO adminExchangeDetail(int returnnum);
	
	public int adminExchangeDetail2(int returnnum);
	
	public List<Dr_reviewDTO> adminReview();
	
	public Dr_reviewDTO adminReviewDetail(int drnum);
	
	public int adminReviewDetail2(int drnum);
	
	public int adminReviewDetail3(Dr_reviewDTO dr_reviewDTO);
}
