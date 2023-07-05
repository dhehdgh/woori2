package kr.co.dong.DTO;

public class addressDTO {
	public int addrnum;
	public int membernum;
	public String delroadaddr;
	public String deljibunaddr;
	public String deldetailaddr;
	public String delextraaddr;
	public int delpostcode;
	public int getAddrnum() {
		return addrnum;
	}
	public void setAddrnum(int addrnum) {
		this.addrnum = addrnum;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getDelroadaddr() {
		return delroadaddr;
	}
	public void setDelroadaddr(String delroadaddr) {
		this.delroadaddr = delroadaddr;
	}
	public String getDeljibunaddr() {
		return deljibunaddr;
	}
	public void setDeljibunaddr(String deljibunaddr) {
		this.deljibunaddr = deljibunaddr;
	}
	public String getDeldetailaddr() {
		return deldetailaddr;
	}
	public void setDeldetailaddr(String deldetailaddr) {
		this.deldetailaddr = deldetailaddr;
	}
	public String getDelextraaddr() {
		return delextraaddr;
	}
	public void setDelextraaddr(String delextraaddr) {
		this.delextraaddr = delextraaddr;
	}
	public int getDelpostcode() {
		return delpostcode;
	}
	public void setDelpostcode(int delpostcode) {
		this.delpostcode = delpostcode;
	}
	@Override
	public String toString() {
		return "addressDTO [addrnum=" + addrnum + ", membernum=" + membernum + ", delroadaddr=" + delroadaddr
				+ ", deljibunaddr=" + deljibunaddr + ", deldetailaddr=" + deldetailaddr + ", delextraaddr="
				+ delextraaddr + ", delpostcode=" + delpostcode + "]";
	}
	
	
}
