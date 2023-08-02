package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
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

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	@Override
	public List<ItemDTO> adminItem() {
		// TODO Auto-generated method stub
		return dao.adminItem();
	}

	@Override
	public List<ItemDTO> adminItemSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String categoryType, String categoryType2) {
		// TODO Auto-generated method stub
		return dao.adminItemSearch(searchType, search, dateType, startDate, endDate, categoryType, categoryType2);
	}
	
	@Override
	public int adminItemInsert(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return dao.adminItemInsert(itemDTO);
	}

	@Override
	public int adminImageInsert(ImgDTO imgDTO) {
		// TODO Auto-generated method stub
		return dao.adminImageInsert(imgDTO);
	}
	
	@Override
	public ItemDTO adminItemInsertItemnum() {
		// TODO Auto-generated method stub
		return dao.adminItemInsertItemnum();
	}
	
	@Override
	public int adminItemInsert2(int itemnum) {
		// TODO Auto-generated method stub
		return dao.adminItemInsert2(itemnum);
	}

	@Override
	public ItemDTO adminItemDetail(int itemnum) {
		// TODO Auto-generated method stub
		return dao.adminItemDetail(itemnum);
	}
	
	@Override
	public List<Iv_itemDTO> adminItemDetail2(int itemnum) {
		// TODO Auto-generated method stub
		return dao.adminItemDetail2(itemnum);
	}
	
	@Override
	public int adminItemAdd(Iv_itemDTO iv_itemDTO) {
		// TODO Auto-generated method stub
		return dao.adminItemAdd(iv_itemDTO);
	}
	
	@Override
	public int adminItemUpdate(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return dao.adminItemUpdate(itemDTO);
	}

	@Override
	public int adminImageUpdate(ImgDTO imgDTO) {
		// TODO Auto-generated method stub
		return dao.adminImageUpdate(imgDTO);
	}
	
	@Override
	public int adminItemDelete(int itemnum) {
		// TODO Auto-generated method stub
		return dao.adminItemDelete(itemnum);
	}
	
	@Override
	public List<MemberDTO> adminMember() {
		// TODO Auto-generated method stub
		return dao.adminMember();
	}
	
	@Override
	public List<MemberDTO> adminMemberSearch(String searchType, String search, String dateType, String startDate,
			String endDate) {
		// TODO Auto-generated method stub
		return dao.adminMemberSearch(searchType, search, dateType, startDate, endDate);
	}
	
	@Override
	public MemberDTO adminMemberDetail(int membernum) {
		// TODO Auto-generated method stub
		return dao.adminMemberDetail(membernum);
	}

	@Override
	public MemberDTO adminMemberDetailPoint(int membernum) {
		// TODO Auto-generated method stub
		return dao.adminMemberDetailPoint(membernum);
	}

	@Override
	public int adminMemberDetailPointUpdate(String id, String pointAdd) {
		// TODO Auto-generated method stub
		return dao.adminMemberDetailPointUpdate(id,pointAdd);
	}

	@Override
	public int adminMemberUpdate(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberUpdate(memberDTO);
	}
	
	@Override
	public int adminMemberDelete(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberDelete(memberDTO);
	}

	@Override
	public int adminMemberRegister(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberRegister(memberDTO);
	}
	
	@Override
	public int adminMemberRegisterAddr(AddressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberRegisterAddr(addressDTO);
	}

	@Override
	public int adminCheckID(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.adminCheckID(memberDTO);
	}

	@Override
	public List<RankDTO> adminMemberRank() {
		// TODO Auto-generated method stub
		return dao.adminMemberRank();
	}

	@Override
	public int adminMemberRankUpdate(RankDTO rankDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberRankUpdate(rankDTO);
	}
	
	@Override
	public int adminMemberRankUpdate2(RankDTO rankDTO) {
		// TODO Auto-generated method stub
		return dao.adminMemberRankUpdate2(rankDTO);
	}

	@Override
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return dao.adminHelp();
	}

	@Override
	public List<HelpDTO> adminHelpSearch(String searchType, String search, String dateType, String startDate,
			String endDate) {
		// TODO Auto-generated method stub
		return dao.adminHelpSearch(searchType, search, dateType, startDate, endDate);
	}
	
	@Override
	public HelpDTO adminHelpDetail(int hno) {
		// TODO Auto-generated method stub
		return dao.adminHelpDetail(hno);
	}

	@Override
	public int adminHelpUpdate(HelpDTO helpDTO) {
		// TODO Auto-generated method stub
		return dao.adminHelpUpdate(helpDTO);
	}

	@Override
	public List<OrderDTO> adminOrder() {
		// TODO Auto-generated method stub
		return dao.adminOrder();
	}

	@Override
	public List<OrderDTO> adminOrderSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		return dao.adminOrderSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	}

	@Override
	public List<ReturnDTO> adminOrderDetail(int buynum) {
		// TODO Auto-generated method stub
		return dao.adminOrderDetail(buynum);
	}

	@Override
	public int adminOrderDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminOrderDetail2(returnnum);
	}

	@Override
	public int adminDeliveryCom() {
		// TODO Auto-generated method stub
		return dao.adminDeliveryCom();
	}
	
	@Override
	public List<ReturnDTO> adminReturn() {
		// TODO Auto-generated method stub
		return dao.adminReturn();
	}

	@Override
	public List<ReturnDTO> adminReturnSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		return dao.adminReturnSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	}
	
	@Override
	public List<ReturnDTO> adminReturnDetail(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminReturnDetail(returnnum);
	}
	
	@Override
	public ReturnDTO test2(int returnnum) {
		// TODO Auto-generated method stub
		return dao.test2(returnnum);
	}
	
	@Override
	public int adminReturnDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminReturnDetail2(returnnum);
	}
	
	@Override
	public List<ReturnDTO> adminExchange() {
		// TODO Auto-generated method stub
		return dao.adminExchange();
	}

	@Override
	public List<ReturnDTO> adminExchangeSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] paymethod, String[] state) {
		// TODO Auto-generated method stub
		return dao.adminExchangeSearch(searchType, search, dateType, startDate, endDate, paymethod, state);
	}
	
	@Override
	public List<ReturnDTO> adminExchangeDetail(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminExchangeDetail(returnnum);
	}
	
	@Override
	public int adminExchangeDetail2(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminExchangeDetail2(returnnum);
	}

	@Override
	public List<Dr_reviewDTO> adminReview() {
		// TODO Auto-generated method stub
		return dao.adminReview();
	}
	
	@Override
	public List<Dr_reviewDTO> adminReviewSearch(String searchType, String search, String dateType, String startDate,
			String endDate, String[] delStates) {
		// TODO Auto-generated method stub
		return dao.adminReviewSearch(searchType, search, dateType, startDate, endDate, delStates);
	}

	@Override
	public Dr_reviewDTO adminReviewDetail(int drnum) {
		// TODO Auto-generated method stub
		return dao.adminReviewDetail(drnum);
	}

	@Override
	public int adminReviewDetail2(int drnum) {
		// TODO Auto-generated method stub
		return dao.adminReviewDetail2(drnum);
	}

	@Override
	public int adminReviewDetail3(Dr_reviewDTO dr_reviewDTO) {
		// TODO Auto-generated method stub
		return dao.adminReviewDetail3(dr_reviewDTO);
	}
}
