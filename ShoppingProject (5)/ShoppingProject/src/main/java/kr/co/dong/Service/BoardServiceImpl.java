package kr.co.dong.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.inject.spi.Message;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	
	
	
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCSZPU97QQ4R0GWU";
	    String api_secret = "OWVWHWG9FJSVJEJJZ98U5VIBHXNSRPLS";
	    net.nurigo.java_sdk.api.Message coolsms = new net.nurigo.java_sdk.api.Message(api_key, api_secret);
	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", "01076125155" );    // 수신전화번호
	    params.put("from", "01076125155");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	     
	}				
		
	
	@Override
	public memberDTO memdetail(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memdetail(membernum, memberDTO);
	}


	@Override
	public List<addressDTO> addrlist(int membernum) {
		// TODO Auto-generated method stub
		return dao.addrlist(membernum);
	}

	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrupdate(addressDTO);
	}

	@Override
	public int addrdelete(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrdelete(addrnum);
	}

	@Override
	public int addrinsert(int membernum, addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrinsert(membernum, addressDTO);
	}

	@Override
	public int memdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memdelete(membernum, memberDTO);
	}


	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return dao.likedelete(zno);
	}
	@Override
	public int selectdelete(String zno) {
		// TODO Auto-generated method stub
		return dao.selectdelete(zno);
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


	@Override
	public int addrbasic(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrbasic(addrnum);
	}

	@Override
	public addressDTO addrdetail(int addrnum) {
		// TODO Auto-generated method stub
		return dao.addrdetail(addrnum);
	}


	@Override
	public memberDTO check(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.check(membernum, memberDTO);
	}

	@Override
	public memberDTO checkdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.checkdelete(membernum, memberDTO);
	}


	@Override
	public int mailupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.mailupdate(membernum, memberDTO);
	}


	@Override
	public int pwupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.pwupdate(membernum, memberDTO);
	}


	@Override
	public int telupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.telupdate(membernum, memberDTO);
	}


	@Override
	public int birthupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.birthupdate(membernum, memberDTO);
	}


//------------------------------------------------------------------------------------
	@Override
	public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount(membernum, keyword, searchtype, kind);
	}


	@Override
	public List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange(membernum, startIdx, endIdx, keyword, searchtype, kind);
	}


	@Override
	public int getTotalCount1(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount1(membernum);
	}


	@Override
	public List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange1(membernum, startIdx, endIdx);
	}

	@Override
	public int getStartIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return dao.getStartIndex(page, pageSize);
	}


	@Override
	public int getEndIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return dao.getEndIndex(page, pageSize);
	}


	@Override
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return dao.returninsert(itemreturnDTO);
	}


	   @Override
	   public Map login(Map<String, Object> map) throws Exception{
	      // TODO Auto-generated method stub
	      return dao.login(map);
	   }


	@Override
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderform(dv_orderDTO);
	}


	@Override
	public int getTotalCount2(int membernum, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount2(membernum, keyword, kind);
	}


	@Override
	public List<dv_orderDTO> getListByRange2(int membernum, int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange2(membernum, startIdx, endIdx, keyword, kind);
	}


	@Override
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderdetail(dv_orderDTO);
	}


	@Override
	public int orderstaupdate(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderstaupdate(dv_orderDTO);
		}


	@Override
	public int ordersta(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.ordersta(dv_orderDTO);
	}


	@Override
	public memberDTO findID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.findID(memberDTO);
	}


	@Override
	public memberDTO findPW(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.findPW(memberDTO);
	}


	@Override
	public int MemberRegister(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.MemberRegister(memberDTO);
	}


	@Override
	public int memberCheckID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.memberCheckID(memberDTO);
	}


	@Override
	public int addrinsert1(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return dao.addrinsert1(addressDTO);
	}


	@Override
	public int pwupdate1(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return dao.pwupdate1(memberDTO);
	}
	
}
