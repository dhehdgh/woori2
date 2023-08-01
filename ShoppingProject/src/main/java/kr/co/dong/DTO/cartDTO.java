package kr.co.dong.DTO;


public class cartDTO {
	
	private int cartno;
	private int membernum;
	private int itemnum;
	private int itemcnt;
	private int iv_itemnum;
	
	public int getIv_itemnum() {
		return iv_itemnum;
	}


	public void setIv_itemnum(int iv_itemnum) {
		this.iv_itemnum = iv_itemnum;
	}

	private  dv_order_itemDTO dv_order_itemDTO; //상품DTO
	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}


	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}

	private  itemDTO itemDTO; //상품DTO
	private memberDTO memberDTO; //회원DTO
	private imgDTO imgDTO; //이미지DTO
	private iv_itemDTO iv_itemDTO; //상품상세DTO
	
	public iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}


	public void setIv_itemDTO(iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}


	public imgDTO getImgDTO() {
		return imgDTO;
	}


	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}


	public itemDTO getItemDTO() {
		return itemDTO;
	}


	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}


	public memberDTO getMemberDTO() {
		return memberDTO;
	}


	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
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


	@Override
	public String toString() {
		return "cartDTO [cartno=" + cartno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", itemcnt="
				+ itemcnt + ", iv_itemnum=" + iv_itemnum + ", dv_order_itemDTO=" + dv_order_itemDTO + ", itemDTO="
				+ itemDTO + ", memberDTO=" + memberDTO + ", imgDTO=" + imgDTO + ", iv_itemDTO=" + iv_itemDTO + "]";
	}


	


	
	

	



}
