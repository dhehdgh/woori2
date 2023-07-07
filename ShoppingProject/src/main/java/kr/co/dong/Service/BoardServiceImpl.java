package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
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
	public List<MemberDTO> adminMember() {
		// TODO Auto-generated method stub
		return dao.adminMember();
	}
	
	@Override
	public List<HelpDTO> adminHelp() {
		// TODO Auto-generated method stub
		return dao.adminHelp();
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
