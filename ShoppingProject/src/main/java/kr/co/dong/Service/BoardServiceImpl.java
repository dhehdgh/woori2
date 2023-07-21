package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;

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
	public int adminItem2() {
		// TODO Auto-generated method stub
		return dao.adminItem2();
	}
	
	@Override
	public int adminItemInsert(ItemDTO itemDTO) {
		// TODO Auto-generated method stub
		return dao.adminItemInsert(itemDTO);
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
	public int adminCheckID(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.adminCheckID(memberDTO);
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
	public List<ReturnDTO> adminReturn() {
		// TODO Auto-generated method stub
		return dao.adminReturn();
	}

	@Override
	public ReturnDTO adminReturnDetail(int returnnum) {
		// TODO Auto-generated method stub
		return dao.adminReturnDetail(returnnum);
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
	public ReturnDTO adminExchangeDetail(int returnnum) {
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
