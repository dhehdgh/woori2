package kr.co.dong.Service;

import java.util.List;

<<<<<<< HEAD
import org.springframework.stereotype.Service;
=======
import kr.co.dong.DTO.CartDTO;
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e

import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;

@Service
public interface BoardService {
<<<<<<< HEAD
=======
	
	public List<CartDTO> list();
>>>>>>> 2c90b6fdf3bb8aeba88af843c7de8acf5507203e

//내정보수정
	//회원 상세조회
	public memberDTO memdetail(int membernum);
	//회원정보 수정
	public int memupdate(memberDTO memberDTO);

//배송지관리
	//배송지 조회
	public List<addressDTO> addrlist();
	//배송지 수정
	public int addrupdate(addressDTO addressDTO);
	//배송지 삭제
	public int addrdelete(int addressnum);
	//배송지 추가
	public int addrinsert(addressDTO addressDTO);
	
//회원탈퇴
	//회원 탈퇴
		public int memdelete(int membernum);
		
//내찜목록
	//찜전체 조회
	public List<mylistDTO> likelist();
	//찜삭제
	public int likedelete(int zno);
	
//반품/교환/취소 관리
	//반품전체 조회 - 주문테이블이랑 조인해서 조회되도록
	public List<itemreturnDTO> returnlist();
	//반품상세조회
	public itemreturnDTO returndetail(int returnnum);
	//반품 취소(식제)
	public int returndelete(int returnnum);
}
