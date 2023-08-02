package kr.co.dong.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dong.DAO.BoardDAO;
import kr.co.dong.DTO.cartDTO;
import kr.co.dong.DTO.dv_orderDTO;
import kr.co.dong.DTO.help_boardDTO;
import kr.co.dong.DTO.itemreturnDTO;
import kr.co.dong.DTO.memberDTO;
import kr.co.dong.DTO.reviewDTO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;

	@Override
	public List<cartDTO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<dv_orderDTO> dv_orderlist() throws Exception {
		return dao.dv_orderlist();
	}

	@Override
	public List<help_boardDTO> helplist(int displayPost, int postNum) throws Exception {
		return dao.helplist(displayPost,postNum);
	}

	@Override
	public help_boardDTO helpdetail(int hno) throws Exception{
		return dao.helpdetail(hno);
	}

	@Override
	public int helpupdate(help_boardDTO helpupdate) throws Exception {
		return dao.helpupdate(helpupdate);
	}

	@Override
	public int helpcancel (int hno) throws Exception {
		return dao.helpcancel(hno);
	}

	@Override
	public int helpinsert(help_boardDTO helpinsert) throws Exception {
		return dao.helpinsert(helpinsert);
	}

	@Override
	public List<reviewDTO> reviewlist(int displayPost, int postNum) throws Exception {
		return dao.reviewlist(displayPost,postNum);
	}

	@Override
	public int reviewupdate(reviewDTO reviewupdate) throws Exception {
		return dao.reviewupdate(reviewupdate);
	}

	@Override
	public List<reviewDTO> noreviewlist(int displayPost, int postNum) throws Exception {
		return dao.noreviewlist(displayPost,postNum);
	}

	@Override
	public int reviewinsert(reviewDTO reviewinsert) throws Exception {
		return dao.reviewinsert(reviewinsert);
	}

	@Override
	public int reviewset(dv_orderDTO reviewset) throws Exception {
		return dao.reviewset(reviewset);
	}

	@Override
	public List<dv_orderDTO> reviewinsertdetail(int buynum) throws Exception {
		return dao.reviewinsertdetail(buynum);
	}

	@Override
	public reviewDTO reviewde(int reviewno) throws Exception {
		return dao.reviewde(reviewno);
	}

	@Override
	public int reviewdelete(int reviewno) throws Exception {
		return dao.reviewdelete(reviewno);
	}
	   @Override
	   public int getTotalCount(String keyword, String searchtype, String kind) throws Exception {
	      return dao.getTotalCount(keyword, searchtype, kind);
	   }


	   @Override
	   public List<itemreturnDTO> getListByRange(int startIdx, int endIdx, String keyword, String searchtype, String kind)
	         throws Exception {
	      return dao.getListByRange(startIdx, endIdx, keyword, searchtype, kind);
	   }

	@Override
	public int getStartIndex(int page, int pageSize) throws Exception {
		return dao.getStartIndex(page, pageSize);
	}

	@Override
	public int getEndIndex(int page, int pageSize) throws Exception {
		return dao.getEndIndex(page, pageSize);
	}

	@Override
	public int orderlistcartinsert(cartDTO orderlistcartinsert) throws Exception {
		return dao.orderlistcartinsert(orderlistcartinsert);
	}

	@Override
	public int getTotalCount2(String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount2(keyword, kind);
	}

	@Override
	public List<dv_orderDTO> getListByRange2(int startIdx, int endIdx, String keyword, String kind) throws Exception {
		// TODO Auto-generated method stub
		return dao.getListByRange2(startIdx, endIdx, keyword, kind);
	}

	@Override
	public dv_orderDTO orderdetail(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderdetail(dv_orderDTO);
	}

	@Override
	public dv_orderDTO orderform(dv_orderDTO dv_orderDTO) {
		// TODO Auto-generated method stub
		return dao.orderform(dv_orderDTO);
	}

	@Override
	public int returninsert(itemreturnDTO itemreturnDTO) {
		// TODO Auto-generated method stub
		return dao.returninsert(itemreturnDTO);
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
	public List<reviewDTO> reviewdetail(int reviewno) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewdetail(reviewno);
	}

	@Override
	public memberDTO mypoint(memberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.mypoint(memberDTO);
	}

	@Override
	public List<itemreturnDTO> returndetail() throws Exception {
		// TODO Auto-generated method stub
		return dao.returndetail();
	}

	@Override
	public int myhelpcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.myhelpcount();
	}

	@Override
	public int mynoreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.mynoreviewcount();
	}

	@Override
	public int myreviewcount() throws Exception {
		// TODO Auto-generated method stub
		return dao.myreviewcount();
	}

	@Override
	public int buyok(dv_orderDTO dv_orderDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.buyok(dv_orderDTO);
	}


}
