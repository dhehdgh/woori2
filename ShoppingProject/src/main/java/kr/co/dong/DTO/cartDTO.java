package kr.co.dong.DTO;

public class CartDTO {
	
	private int cartno;
	private int membernum;
	private int iv_itemnum;
	private int itemnum;
	private int itemcnt;
	private int cartstate;
	private MemberDTO memberDTO;
	private Iv_itemDTO iv_itemDTO;
	private ItemDTO itemDTO;
	
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
	public int getIv_itemnum() {
		return iv_itemnum;
	}
	public void setIv_itemnum(int iv_itemnum) {
		this.iv_itemnum = iv_itemnum;
	}
	public int getItemcnt() {
		return itemcnt;
	}
	public void setItemcnt(int itemcnt) {
		this.itemcnt = itemcnt;
	}
	public int getCartstate() {
		return cartstate;
	}
	public void setCartstate(int cartstate) {
		this.cartstate = cartstate;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public Iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}
	public void setIv_itemDTO(Iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}
	public ItemDTO getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(ItemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}
	@Override
	public String toString() {
		return "CartDTO [cartno=" + cartno + ", membernum=" + membernum + ", iv_itemnum=" + iv_itemnum + ", itemnum="
				+ itemnum + ", itemcnt=" + itemcnt + ", cartstate=" + cartstate + ", memberDTO=" + memberDTO
				+ ", iv_itemDTO=" + iv_itemDTO + ", itemDTO=" + itemDTO + "]";
	}
}
