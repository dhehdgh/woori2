package kr.co.dong.DTO;

import lombok.Data;

@Data
public class cartDTO {
	
	private int cartno;
	private int membernum;
	private int itemnum;
	private int itemcnt;
	private int iv_itemnum;
	private int cartstate;
	
	public int getcartno;
	
	public int getGetcartno() {
		return getcartno;
	}


	public void setGetcartno(int getcartno) {
		this.getcartno = getcartno;
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
	private memberDTO memberDTO;
	private itemDTO itemDTO;
	private dv_orderDTO dv_orderDTO;
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private addressDTO addressDTO;
	private boardDTO boardDTO;
	private dr_reviewDTO dr_reviewDTO;
	private help_boardDTO help_boardDTO;
	private itemreturnDTO itemreturnDTO;
	private iv_itemDTO iv_itemDTO;
	private mylistDTO mylistDTO;
	private ratinglistDTO ratinglistDTO;
	private reviewDTO reviewDTO;
	
	
	public memberDTO getMemberDTO() {
		return memberDTO;
	}


	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}


	@Override
	public String toString() {
		return "cartDTO [cartno=" + cartno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", itemcnt="
				+ itemcnt +", iv_itemnum="+iv_itemnum+", cartstate="+cartstate+"]";
	}
	
	
	public int getIv_itemnum() {
		return iv_itemnum;
	}


	public void setIv_itemnum(int iv_itemnum) {
		this.iv_itemnum = iv_itemnum;
	}


	public int getCartstate() {
		return cartstate;
	}


	public void setCartstate(int cartstate) {
		this.cartstate = cartstate;
	}


	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getItemcnt() {
		return itemcnt;
	}
	public void setItemcnt(int itemcnt) {
		this.itemcnt = itemcnt;
	}



}
