package kr.co.dong.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.google.inject.spi.Message;

import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


public interface BoardService {
//로그인
	public Map login(Map<String, Object> map)throws Exception;
	
//회원가입
	public int MemberRegister(memberDTO memberDTO);
	public int memberCheckID(memberDTO memberDTO);
	public int addrinsert1(addressDTO addressDTO);
//아이디 찾기, 비밀번호 찾기
	public memberDTO findID(memberDTO memberDTO);		
	public memberDTO findPW(memberDTO memberDTO);
	//비밀번호 찾기 후 수정
	public int pwupdate1(memberDTO memberDTO);
	
//내정보수정
	//회원수정 본인확인
	public memberDTO check(int membernum, memberDTO memberDTO);
	//회원 상세조회
	public memberDTO memdetail(int membernum, memberDTO memberDTO);
	//메일 수정
	public int mailupdate(int membernum, memberDTO memberDTO);	
	//비밀번호 수정
	public int pwupdate(int membernum, memberDTO memberDTO);	
	//전화번호 수정
	public int telupdate(int membernum, memberDTO memberDTO);	
	//생일 수정
	public int birthupdate(int membernum, memberDTO memberDTO);
	
	void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);
	
//회원탈퇴
	//회원탈퇴 본인확인
	public memberDTO checkdelete(int membernum, memberDTO memberDTO);
	//회원 탈퇴
	public int memdelete(int membernum, memberDTO memberDTO);
	
//배송지관리
	//배송지 조회
	public List<addressDTO> addrlist(int membernum);
	//배송지 상세조회
		public addressDTO addrdetail(int addrnum);
	//배송지 수정
	public int addrupdate(addressDTO addressDTO);
	//기본배송지 수정
	public int addrbasic(int addrnum);
	//배송지 삭제
	public int addrdelete(int addrnum);
	//배송지 추가
	public int addrinsert(int membernum, addressDTO addressDTO);

//내찜목록
	//찜삭제
	public int likedelete(int zno);
	//찜선택삭제
	public int selectdelete(String zno);
	// 찜전체 보기, 페이징
	public int getTotalCount1(int membernum) throws Exception;
	
	List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx) throws Exception; 

//주문목록
	//전체 조회, 검색, 페이징
	 public int getTotalCount2(int membernum, String keyword, String kind) throws Exception;
     
	  List<dv_orderDTO> getListByRange2(int membernum, int startIdx, int endIdx, String keyword, String kind) throws Exception;
	//상세 이동
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO);
	//반품교환취소폼 이동
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO);
	//반품교환취소신청
	public int returninsert(itemreturnDTO itemreturnDTO);
	//주문상태 업데이트
	public int orderstaupdate(dv_orderDTO dv_orderDTO);
	//반품 취소 시 주문상태 업데이트
	public int ordersta(dv_orderDTO dv_orderDTO);
	
//반품/교환/취소 관리	
	//반품상세조회
	public itemreturnDTO returndetail(int returnnum);
	//반품 취소(식제)
	public int returndelete(int returnnum);	
	
	// 반품전체 조회, 검색, 페이징
	public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception;
			
	List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind) throws Exception;
	
	//----------------------------------------------------------------------------------	
	public int getStartIndex(int page, int pageSize) throws Exception;

	public int getEndIndex(int page, int pageSize) throws Exception;
	
}
