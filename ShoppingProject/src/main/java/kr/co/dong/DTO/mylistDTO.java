package kr.co.dong.DTO;

import lombok.Data;

@Data
public class mylistDTO {

	private int zno;			//찜번호
	private int membernum;		//회원번호
	private int itemnum;		//상품번호
	
	
	
	@Override
	public String toString() {
		return "mylist [zno="+zno+", membernum="+membernum+", itemnum="+itemnum+"]";
	}
	public int getZno() {
		return zno;
	}
	public void setZno(int zno) {
		this.zno = zno;
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
	
	
}
