package kr.co.dong.DTO;

public class CartDTO {
	
	private int cartno;
	private int membernum;
	private int itemnum;
	private int iv_itemnum;
	private int itemcnt;
	private int cartstate;
	
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
	
	@Override
	public String toString() {
		return "CartDTO [cartno=" + cartno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", iv_itemnum="
				+ iv_itemnum + ", itemcnt=" + itemcnt + ", cartstate=" + cartstate + "]";
	}
	
}
