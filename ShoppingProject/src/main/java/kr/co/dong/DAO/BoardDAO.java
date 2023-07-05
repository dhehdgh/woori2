package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.cartDTO;
import lombok.Data;

@Data
public interface BoardDAO {

	public List<cartDTO> list();
}
