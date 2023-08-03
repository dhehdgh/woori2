package kr.co.dong.DTO;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class dv_order_itemDTO {
	private int dv_itemno;
	private int cartno;
	private int buynum;
	
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
	public List<Integer> getCartnoList() {
		return cartnoList;
	}
	public void setCartnoList(List<Integer> cartnoList) {
		this.cartnoList = cartnoList;
	}
	private List<Integer> cartnoList;
	
	
	public cartDTO getCartDTO() {
		return cartDTO;
	}
	public void setCartDTO(cartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}
	public int getDv_itemno() {
		return dv_itemno;
	}
	public void setDv_itemno(int dv_itemno) {
		this.dv_itemno = dv_itemno;
	}
	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	@Override
	public String toString() {
		return "dv_order_itemDTO [dv_itemno=" + dv_itemno + ", cartno=" + cartno + ", buynum=" + buynum + ", cartDTO="
				+ cartDTO + ", cartnoList=" + cartnoList + "]";
	}
	
	
	
	
	
}
