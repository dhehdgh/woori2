package kr.co.dong.DTO;

import lombok.Data;

@Data
public class reviewDTO {

	private int reviewno;		//리뷰번호
	private int itemnum;		//상품번호
	private int membernum;		//회원번호
	private String rcontent;		//리뷰내용
	private String rdate;		//리뷰날짜
	private int rstar;			//평점
	private int reviewlike;		//리뷰추천(리뷰도움됨)
	private int reviewreport;		//리뷰신고
	private int del;			//리뷰상태
	private int rstate;			//리뷰작성여부
	private int buynum;
	
	private String size;
	private String color;
	
	
	public int getreviewno;
	private memberDTO memberDTO;
	private itemDTO itemDTO;
	private dv_orderDTO dv_orderDTO;
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private cartDTO cartDTO;
	private addressDTO addressDTO;
	private boardDTO boardDTO;
	private dr_reviewDTO dr_reviewDTO;
	private help_boardDTO help_boardDTO;
	private itemreturnDTO itemreturnDTO;
	private iv_itemDTO iv_itemDTO;
	private mylistDTO mylistDTO;
	private ratinglistDTO ratinglistDTO;
	private reviewDTO reviewDTO;
	private dv_order_itemDTO dv_order_itemDTO;
	
	
	
	public memberDTO getMemberDTO() {
		return memberDTO;
	}



	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}



	public itemDTO getItemDTO() {
		return itemDTO;
	}



	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}



	public dv_orderDTO getDv_orderDTO() {
		return dv_orderDTO;
	}



	public void setDv_orderDTO(dv_orderDTO dv_orderDTO) {
		this.dv_orderDTO = dv_orderDTO;
	}



	public codetableDTO getCodetableDTO() {
		return codetableDTO;
	}



	public void setCodetableDTO(codetableDTO codetableDTO) {
		this.codetableDTO = codetableDTO;
	}



	public imgDTO getImgDTO() {
		return imgDTO;
	}



	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}



	public cartDTO getCartDTO() {
		return cartDTO;
	}



	public void setCartDTO(cartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}



	public addressDTO getAddressDTO() {
		return addressDTO;
	}



	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}



	public boardDTO getBoardDTO() {
		return boardDTO;
	}



	public void setBoardDTO(boardDTO boardDTO) {
		this.boardDTO = boardDTO;
	}



	public dr_reviewDTO getDr_reviewDTO() {
		return dr_reviewDTO;
	}



	public void setDr_reviewDTO(dr_reviewDTO dr_reviewDTO) {
		this.dr_reviewDTO = dr_reviewDTO;
	}



	public help_boardDTO getHelp_boardDTO() {
		return help_boardDTO;
	}



	public void setHelp_boardDTO(help_boardDTO help_boardDTO) {
		this.help_boardDTO = help_boardDTO;
	}



	public itemreturnDTO getItemreturnDTO() {
		return itemreturnDTO;
	}



	public void setItemreturnDTO(itemreturnDTO itemreturnDTO) {
		this.itemreturnDTO = itemreturnDTO;
	}



	public iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}



	public void setIv_itemDTO(iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}



	public mylistDTO getMylistDTO() {
		return mylistDTO;
	}



	public void setMylistDTO(mylistDTO mylistDTO) {
		this.mylistDTO = mylistDTO;
	}



	public ratinglistDTO getRatinglistDTO() {
		return ratinglistDTO;
	}



	public void setRatinglistDTO(ratinglistDTO ratinglistDTO) {
		this.ratinglistDTO = ratinglistDTO;
	}



	public reviewDTO getReviewDTO() {
		return reviewDTO;
	}



	public void setReviewDTO(reviewDTO reviewDTO) {
		this.reviewDTO = reviewDTO;
	}



	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}



	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}



	@Override
	public String toString() {
		return "reviewDTO [reviewno="+reviewno+", itemnum="+itemnum+",membernum="+membernum+", rcontent="+rcontent+", rdate="+rdate+", rstar="+rstar+
				", reviewlike="+reviewlike+", reviewreport="+reviewreport+", del="+del+", rstate="+rstate+"]";
	}
	
	
	
	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public int getBuynum() {
		return buynum;
	}

	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}

	public int getGetreviewno() {
		return getreviewno;
	}

	public void setGetreviewno(int getreviewno) {
		this.getreviewno = getreviewno;
	}

	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public int getReviewlike() {
		return reviewlike;
	}
	public void setReviewlike(int reviewlike) {
		this.reviewlike = reviewlike;
	}
	public int getReviewreport() {
		return reviewreport;
	}
	public void setReviewreport(int reviewreport) {
		this.reviewreport = reviewreport;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public int getRstate() {
		return rstate;
	}
	public void setRstate(int rstate) {
		this.rstate = rstate;
	}
	
	
}
