package kr.co.dong.DAO;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

<<<<<<< HEAD
import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
=======
import kr.co.dong.DTO.CartDTO;
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e

@Service
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlsession; 
	private String namespace = "kr.co.dong.BoardMapper";
	
	@Override
<<<<<<< HEAD
	public memberDTO memdetail(int membernum) {
=======
	public List<CartDTO> list() {
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".memdetail");
	}
	@Override
	public int memupdate(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".memupdate", memberDTO);
	}
	@Override
	public List<addressDTO> addrlist() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".addrlist");
	}
	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrupdate",addressDTO);
	}
	@Override
	public int addrdelete(int addressnum) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".addrdelete",addressnum);
	}
	@Override
	public int addrinsert(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".addrinsert",addressDTO);
	}
	@Override
	public int memdelete(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".memdelete",membernum);
	}
	@Override
	public List<mylistDTO> likelist() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".likelist");
	}
	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".likedelete", zno);
	}
	@Override
	public List<itemreturnDTO> returnlist() {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".returnlist");
	}
	@Override
	public itemreturnDTO returndetail(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".returndetail",returnnum);
	}
	@Override
	public int returndelete(int returnnum) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".returndelete",returnnum);
	}
	
	
}
