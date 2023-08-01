package kr.co.dong.DTO;

public class Dv_order_itemDTO {
	private int dv_itemno;
	private int buynum;
	private int cartno;
	private CartDTO cartDTO;
	
	public int getDv_itemno() {
		return dv_itemno;
	}
	public void setDv_itemno(int dv_itemno) {
		this.dv_itemno = dv_itemno;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public CartDTO getCartDTO() {
		return cartDTO;
	}
	public void setCartDTO(CartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}
	
	@Override
	public String toString() {
		return "Dv_order_itemDTO [dv_itemno=" + dv_itemno + ", buynum=" + buynum + ", cartno=" + cartno + ", cartDTO="
				+ cartDTO + "]";
	}
}
