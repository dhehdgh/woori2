package kr.co.dong.DAO;

import java.util.List;
import java.util.HashMap;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.SqlRowSetResultSetExtractor;
import org.springframework.stereotype.Repository;

import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.reviewDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	private static final String namespace = "kr.co.dong.BoardMapper";
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<cartDTO> list() {
		return sqlsession.selectList(namespace+".list");
	}

	@Override
	public List<dv_orderDTO> dv_orderlist() throws Exception {
		return sqlsession.selectList(namespace+".dv_orderlist");
	}

	@Override
	public List<help_boardDTO> helplist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".helplist",data);
	}

	@Override
	public help_boardDTO helpdetail(int hno) throws Exception {
		return sqlsession.selectOne(namespace+".helpdetail",hno);
	}

	@Override
	public int helpupdate(help_boardDTO helpupdate) throws Exception {
		return sqlsession.update(namespace+".helpupdate",helpupdate);
	}

	@Override
	public int helpcancel (int hno) throws Exception {
		return sqlsession.update(namespace+".helpcancel",hno);
	}

	@Override
	public int helpinsert(help_boardDTO helpinsert) throws Exception {
		return sqlsession.insert(namespace+".helpinsert",helpinsert);
	}

	@Override
	public List<reviewDTO> reviewlist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".reviewlist",data);
	}

	@Override
	public int reviewupdate(reviewDTO reviewupdate) throws Exception {
		return sqlsession.update(namespace+".reviewupdate",reviewupdate);
	}

	@Override
	public List<reviewDTO> noreviewlist(int displayPost, int postNum) throws Exception {
		
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".noreviewlist",data);
	}

	@Override
	public int reviewinsert(reviewDTO reviewinsert) throws Exception {
		return sqlsession.insert(namespace+".reviewinsert",reviewinsert);
	}

	@Override
	public int reviewset(dv_orderDTO reviewset) throws Exception {
		return sqlsession.update(namespace+".reviewset",reviewset);
	}

	@Override
	public List<dv_orderDTO> reviewinsertdetail(int buynum) throws Exception {
		return sqlsession.selectList(namespace+".reviewinsertdetail",buynum);
	}

	@Override
	public reviewDTO reviewde(int reviewno) throws Exception {
		return sqlsession.selectOne(namespace+".reviewde",reviewno);
	}

	@Override
	public int reviewdelete(int reviewno) throws Exception {
		return sqlsession.update(namespace+".reviewdelete",reviewno);
	}
	@Override
	   public int getTotalCount(String keyword, String searchtype, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언   
	         data.put("searchtype", searchtype);
	         data.put("keyword", keyword);
	         data.put("kind", kind);
	         return sqlsession.selectOne(namespace+".getTotalCount", data);  
	   }

	   @Override
	   public List<itemreturnDTO> getListByRange(int startIdx, int endIdx, String keyword, String searchtype, String kind)
	         throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("endIdx", endIdx);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("searchtype", searchtype);
	       parameterMap.put("kind", kind);
	       return sqlsession.selectList(namespace + ".getListByRange", parameterMap);
	   }
	@Override
	   public int getStartIndex(int page, int pageSize) throws Exception {
	      return (page - 1) * pageSize;
	   }

	   @Override
	   public int getEndIndex(int page, int pageSize) throws Exception {
	      return page * pageSize;
	   }

	@Override
	public int orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception {
		return sqlsession.insert(namespace+".orderlistcartinsert",orderlistcartinsert);
	}

	//주문 목록
	   @Override
	   public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
	      // TODO Auto-generated method stub
	      return sqlsession.selectOne(namespace+".orderform", dv_orderDTO);
	   }

	   @Override
	   public int getTotalCount2(String keyword, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> data = new HashMap<String, Object>(); // Map 선언   
	      data.put("keyword", keyword);
	      data.put("kind", kind);
	      return sqlsession.selectOne(namespace+".getTotalCount2", data);  
	   }

	   @Override
	   public List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception {
	      // TODO Auto-generated method stub
	      HashMap<String, Object> parameterMap = new HashMap<String, Object>();
	       parameterMap.put("startIdx", startIdx);
	       parameterMap.put("endIdx", endIdx);
	       parameterMap.put("keyword", keyword);
	       parameterMap.put("kind", kind);
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
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".returninsert",itemreturnDTO);
	}


	@Override
	public List<reviewDTO> reviewdetail(int reviewno) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".reviewdetail",reviewno);
	}

	@Override
	public memberDTO mypoint(memberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".mypoint",memberDTO);
	}

	@Override
	public List<itemreturnDTO> returndetail() throws Exception{
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".returndetail");
	}

	public int myhelpcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myhelpcount");
	}

	@Override
	public int mynoreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".mynoreviewcount");
	}

	@Override
	public int myreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".myreviewcount");
	}

	@Override
	public int buyok(dv_orderDTO dv_orderDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".buyok",dv_orderDTO);
	}

}
