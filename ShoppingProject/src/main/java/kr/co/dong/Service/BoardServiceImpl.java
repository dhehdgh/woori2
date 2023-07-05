package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.CartDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	@Override
	public List<CartDTO> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}


}
