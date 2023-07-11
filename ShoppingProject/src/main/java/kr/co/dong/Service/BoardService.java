package kr.co.dong.Service;

import java.util.List;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.Iv_itemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;

public interface BoardService {
	
	public List<ItemDTO> adminItem();
	
	public ItemDTO adminItemDetail(int itemnum);
	
	public List<Iv_itemDTO> adminItemDetail2(int itemnum);
	
	public int adminItemAdd(Iv_itemDTO iv_itemDTO);
	
	public int adminItemUpdate(ItemDTO itemDTO);
	
	public List<MemberDTO> adminMember();
	
	public MemberDTO adminMemberDetail(int membernum);
	
	public int adminMemberUpdate(MemberDTO memberDTO);
	
	public List<HelpDTO> adminHelp();
	
	public HelpDTO adminHelpDetail(int hno);
	
	public List<OrderDTO> adminOrder();
	
	public List<ReturnDTO> adminReturn();
	
	public List<ReturnDTO> adminExchange();
	
	public List<Dr_reviewDTO> adminReview();
}
