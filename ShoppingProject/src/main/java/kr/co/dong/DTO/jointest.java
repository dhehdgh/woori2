package kr.co.dong.DTO;

import lombok.Data;

@Data
public class jointest {
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
	
	private String size;
	private String color;
	

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
	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}
	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}
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
	
	
}
