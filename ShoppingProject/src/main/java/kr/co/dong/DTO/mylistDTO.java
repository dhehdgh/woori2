package kr.co.dong.DTO;

public class mylistDTO {
	public int zno;
	public int membernum;
	public int itemnum;
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
	@Override
	public String toString() {
		return "mylistDTO [zno=" + zno + ", membernum=" + membernum + ", itemnum=" + itemnum + "]";
	}
	
}
