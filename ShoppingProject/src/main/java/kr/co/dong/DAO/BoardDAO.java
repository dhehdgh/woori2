package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.CartDTO;
import lombok.Data;

@Data
public interface BoardDAO {

	public List<CartDTO> list();
}
