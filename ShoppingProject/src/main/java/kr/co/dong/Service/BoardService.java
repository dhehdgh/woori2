package kr.co.dong.Service;

import java.util.List;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.MemberDTO;

public interface BoardService {
	
	public List<CartDTO> list();
	
	public List<MemberDTO> member();
}
