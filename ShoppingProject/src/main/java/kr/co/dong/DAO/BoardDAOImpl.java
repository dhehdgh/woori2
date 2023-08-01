package kr.co.dong.DAO;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DTO.addressDTO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.codetableDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.imgDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.mylistDTO;


@Service
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSession sqlsession; 
	private String namespace = "kr.co.dong.BoardMapper";
	
	@Override
	public memberDTO memdetail(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".memdetail", data );
	}
	
	@Override
	public List<addressDTO> addrlist(int membernum) {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".addrlist", membernum);
	}
	@Override
	public addressDTO addrdetail(int addrnum) {
		// TODO Auto-generated method stub	
		return sqlsession.selectOne(namespace+".addrdetail", addrnum);
		
	}
	@Override
	public int addrupdate(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrupdate",addressDTO); 
	}
	@Override
	public int addrdelete(int addrnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrdelete",addrnum);
	}
	@Override
	public int addrinsert(int membernum, addressDTO addressDTO) {
		// TODO Auto-generated method stub		
		addressDTO.setMembernum(membernum);	
		return sqlsession.insert(namespace+".addrinsert",addressDTO);
	}
	@Override
	public int memdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.delete(namespace+".memdelete",data);
	}
	@Override
	public int likedelete(int zno) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".likedelete", zno);
	}
	@Override
	public int selectdelete(String zno) {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".selectdelete", zno);
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

	
	@Override
	public int addrbasic(int addrnum) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".addrbasic", addrnum);
	}

	@Override
	public memberDTO check(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		
		return sqlsession.selectOne(namespace+".check", data);
	}
	@Override
	public memberDTO checkdelete(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("memberDTO", memberDTO);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".checkdelete", data);
	}

	@Override
	public int mailupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("email", memberDTO.getEmail());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".mailupdate", data);
	}

	@Override
	public int pwupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("pw", memberDTO.getPw());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".pwupdate", data);
	}

	@Override
	public int telupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("tel", memberDTO.getTel());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".telupdate", data);
	}

	@Override
	public int birthupdate(int membernum, memberDTO memberDTO) {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("birth", memberDTO.getBirth());
		data.put("membernum", membernum);
		return sqlsession.update(namespace+".birthupdate", data);
	}

//-------------------------------------------------------------------------------
	@Override
	public int getTotalCount(int membernum, String keyword, String searchtype, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
			data.put("searchtype", searchtype);
			data.put("keyword", keyword);
			data.put("kind", kind);
			data.put("membernum", membernum);
			return sqlsession.selectOne(namespace+".getTotalCount", data);  
	}

	@Override
	public List<itemreturnDTO> getListByRange(int membernum, int startIdx, int endIdx, String keyword, String searchtype, String kind)
			throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("keyword", keyword);
	    parameterMap.put("searchtype", searchtype);
	    parameterMap.put("kind", kind);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange", parameterMap);
	}


	@Override
	public int getTotalCount1(int membernum) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".getTotalCount1", membernum);  
	}

	@Override
	public List<mylistDTO> getListByRange1(int membernum, int startIdx, int endIdx)
			throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange1", parameterMap);
	}
	@Override
	public int getStartIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return (page - 1) * pageSize;
	}

	@Override
	public int getEndIndex(int page, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		return page * pageSize;
	}

	@Override
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".returninsert", itemreturnDTO);  
	}

	   @Override
	   
	   public Map login(Map<String, Object> map) throws Exception{
	      // TODO Auto-generated method stub
	      return sqlsession.selectOne(namespace+".login", map);
	   }
//주문 목록
	@Override
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".orderform", dv_orderDTO);
	}

	@Override
	public int getTotalCount2(int membernum, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언	
		data.put("keyword", keyword);
		data.put("kind", kind);
		data.put("membernum", membernum);
		return sqlsession.selectOne(namespace+".getTotalCount2", data);  
	}

	@Override
	public List<dv_orderDTO> getListByRange2(int membernum,int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	    parameterMap.put("startIdx", startIdx);
	    parameterMap.put("endIdx", endIdx);
	    parameterMap.put("keyword", keyword);
	    parameterMap.put("kind", kind);
	    parameterMap.put("membernum", membernum);
	    return sqlsession.selectList(namespace + ".getListByRange2", parameterMap);
	}

	@Override
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".orderdetail", dv_orderDTO);
	}

	@Override
	public int orderstaupdate(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".orderstaupdate", dv_orderDTO);
	}

	@Override
	public int ordersta(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".ordersta", dv_orderDTO);
	}

	@Override
	public memberDTO findID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".findID", memberDTO);
	}

	@Override
	public memberDTO findPW(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".findPW", memberDTO);
	}

	@Override
	public int MemberRegister(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".MemberRegister", memberDTO);
	}

	@Override
	public int memberCheckID(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".memberCheckID", memberDTO);
	}

	@Override
	public int addrinsert1(addressDTO addressDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".addrinsert1", addressDTO);
	}

	@Override
	public int pwupdate1(memberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".pwupdate1", memberDTO);
	}


	
}
