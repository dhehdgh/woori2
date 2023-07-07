package kr.co.dong.DTO;

public class AddressDTO {
	private int addrnum;
	private int membernum;
	private String delroadaddr;
	private String deljibunaddr;
	private String deldetailaddr;
	private String delextraaddr;
	private int delpostcode;
	
	
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
		return "AddressDTO [addrnum=" + addrnum + ", membernum=" + membernum + ", delroadaddr=" + delroadaddr
				+ ", deljibunaddr=" + deljibunaddr + ", deldetailaddr=" + deldetailaddr + ", delextraaddr="
				+ delextraaddr + ", delpostcode=" + delpostcode + "]";
	}
}
