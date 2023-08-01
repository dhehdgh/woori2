package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
<<<<<<< HEAD
import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
=======
import kr.co.dong.DTO.CartDTO;
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	@Override
<<<<<<< HEAD
	public memberDTO memdetail(int membernum) {
=======
	public List<CartDTO> list() {
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e
		// TODO Auto-generated method stub
		return dao.memdetail(membernum);
	}

	@Override
	public int memupdate(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memupdate(memberDTO);
	}

	@Override
	public List<addressDTO> addrlist() {
		// TODO Auto-generated method stub
		return dao.addrlist();
	}

	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrupdate(addressDTO);
	}

	@Override
	public int addrdelete(int addressnum) {
		// TODO Auto-generated method stub
		return dao.addrdelete(addressnum);
	}

	@Override
	public int addrinsert(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrinsert(addressDTO);
	}

	@Override
	public int memdelete(int membernum) {
		// TODO Auto-generated method stub
		return dao.memdelete(membernum);
	}

	@Override
	public List<mylistDTO> likelist() {
		// TODO Auto-generated method stub
		return dao.likelist();
	}

	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return dao.likedelete(zno);
	}

	@Override
	public List<itemreturnDTO> returnlist() {
		// TODO Auto-generated method stub
		return dao.returnlist();
	}

	@Override
	public itemreturnDTO returndetail(int returnnum) {
		// TODO Auto-generated method stub
		return dao.returndetail(returnnum);
	}

	@Override
	public int returndelete(int returnnum) {
		// TODO Auto-generated method stub
		return dao.returndelete(returnnum);
	}
	
	
	
}
