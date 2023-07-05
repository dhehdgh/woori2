package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.CartDTO;
import kr.co.dong.DTO.MemberDTO;
import lombok.Data;

@Data
public interface BoardDAO {

	public List<CartDTO> list();
	
	public List<MemberDTO> member();
}
