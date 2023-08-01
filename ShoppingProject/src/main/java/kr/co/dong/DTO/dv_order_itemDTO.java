package kr.co.dong.DTO;

public class dv_order_itemDTO {
	private int dv_itemno;
	private int cartno;
	private int buynum;
	private cartDTO cartDTO;
	
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
				+ cartDTO + "]";
	}
	
	
	
}
