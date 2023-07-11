package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.CartDTO;
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
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return dao.adminHelp();
	}
	
	@Override
	public HelpDTO adminHelpDetail(int hno) {
		// TODO Auto-generated method stub
		return dao.adminHelpDetail(hno);
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
	public List<ReturnDTO> adminExchange() {
		// TODO Auto-generated method stub
		return dao.adminExchange();
	}

	@Override
	public List<Dr_reviewDTO> adminReview() {
		// TODO Auto-generated method stub
		return dao.adminReview();
	}
}
