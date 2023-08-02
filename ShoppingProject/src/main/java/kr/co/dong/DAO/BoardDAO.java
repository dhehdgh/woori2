package kr.co.dong.DAO;

import java.util.List;

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
import kr.co.dong.DTO.AddressDTO;

public interface BoardDAO {

	public List<ItemDTO> adminItem();
	
	public List<ItemDTO> adminItemSearch(String searchType,String search, String dateType, String startDate, String endDate, String categoryType, String categoryType2);
	
	public int adminItemInsert(ItemDTO itemDTO);
	
	public int adminImageInsert(ImgDTO imgDTO);
	
	public ItemDTO adminItemInsertItemnum();
	
	public int adminItemInsert2(int itemnum);
	
	public ItemDTO adminItemDetail(int itemnum);
	
	public List<Iv_itemDTO> adminItemDetail2(int itemnum);
	
	public int adminItemAdd(Iv_itemDTO iv_itemDTO);
	
	public int adminItemUpdate(ItemDTO itemDTO);
	
	public int adminImageUpdate(ImgDTO imgDTO);
	
	public int adminItemDelete(int itemnum);
	
	public List<MemberDTO> adminMember();
	
	public List<MemberDTO> adminMemberSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public MemberDTO adminMemberDetail(int membernum);
	
	public MemberDTO adminMemberDetailPoint(int membernum);
	
	public int adminMemberDetailPointUpdate(String id, String pointAdd);
	
	public int adminMemberUpdate(MemberDTO memberDTO);
	
	public int adminMemberDelete(MemberDTO memberDTO);
	
	public int adminMemberRegister(MemberDTO memberDTO);
	
	public int adminMemberRegisterAddr(AddressDTO addressDTO);
	
	public int adminCheckID(MemberDTO memberDTO);
	
	public List<RankDTO> adminMemberRank();
	
	public int adminMemberRankUpdate(RankDTO rankDTO);
	
	public int adminMemberRankUpdate2(RankDTO rankDTO);
	
	public List<HelpDTO> adminHelp();
	
	public List<HelpDTO> adminHelpSearch(String searchType,String search, String dateType, String startDate, String endDate);
	
	public HelpDTO adminHelpDetail(int hno);
	
	public int adminHelpUpdate(HelpDTO helpDTO);
	
	public List<OrderDTO> adminOrder();
	
	public List<OrderDTO> adminOrderSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<ReturnDTO> adminOrderDetail(int buynum);
	
	public int adminOrderDetail2(int returnnum);

	public int adminDeliveryCom();
	
	public List<ReturnDTO> adminReturn();
	
	public List<ReturnDTO> adminReturnSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<ReturnDTO> adminReturnDetail(int returnnum);
	
	public ReturnDTO test2(int returnnum);
	
	public int adminReturnDetail2(int returnnum);
	
	public List<ReturnDTO> adminExchange();
	
	public List<ReturnDTO> adminExchangeSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] paymethod, String[] state);
	
	public List<ReturnDTO> adminExchangeDetail(int returnnum);
	
	public int adminExchangeDetail2(int returnnum);
	
	public List<Dr_reviewDTO> adminReview();
	
	public List<Dr_reviewDTO> adminReviewSearch(String searchType,String search, String dateType, String startDate, String endDate, String[] delStates);
	
	public Dr_reviewDTO adminReviewDetail(int drnum);
	
	public int adminReviewDetail2(int drnum);
	
	public int adminReviewDetail3(Dr_reviewDTO dr_reviewDTO);
	
}
