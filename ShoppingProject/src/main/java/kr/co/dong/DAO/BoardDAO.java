package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.Dr_reviewDTO;
import kr.co.dong.DTO.HelpDTO;
import kr.co.dong.DTO.ItemDTO;
import kr.co.dong.DTO.MemberDTO;
import kr.co.dong.DTO.OrderDTO;
import kr.co.dong.DTO.ReturnDTO;
import lombok.Data;

public interface BoardDAO {

	public List<ItemDTO> adminItem();
	
	public List<MemberDTO> adminMember();
	
	public List<HelpDTO> adminHelp();
	
	public List<OrderDTO> adminOrder();
	
	public List<ReturnDTO> adminReturn();
	
	public List<ReturnDTO> adminExchange();
	
	public List<Dr_reviewDTO> adminReview();
}
