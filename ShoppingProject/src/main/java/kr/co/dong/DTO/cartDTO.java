package kr.co.dong.DTO;

import lombok.Data;

@Data
public class cartDTO {
	
	private int cartno;
	private int membernum;
	private int itemnum;
	private int itemcnt;
	
	
	
	@Override
	public String toString() {
		return "cartDTO [cartno=" + cartno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", itemcnt="
				+ itemcnt + "]";
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
