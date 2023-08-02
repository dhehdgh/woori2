package kr.co.dong.DTO;

import lombok.Data;

@Data
public class addressDTO {

	private int addressnum;		//배송지번호
	private int membernum;		//회원번호
	private String delroadaddr;		//도로명주소
	private String deljibunaddr;		//지번주소
	private String deldetailaddr;		//상세주소
	private String delextraaddr;		//참고항목
	private int addrstate;		//기본배송지상태
	private int deladdrstate;		//배송지삭제상태
	private int delpostcode;		//우편번호
	private int addrnum;
	
	
	
	@Override
	public String toString() {
		return "address [addressnum="+addressnum+", membernum="+membernum+", delroadaddr="+delroadaddr+", deljibunaddr="+deljibunaddr+
				", deldetailaddr="+deldetailaddr+", delextraaddr="+delextraaddr+", addrstate="+addrstate+", deladdrstate="+deladdrstate+
				", delpostcode="+delpostcode+", addrnum= "+addrnum+"]";
	}
	
	public int getAddrnum() {
		return addrnum;
	}

	public void setAddrnum(int addrnum) {
		this.addrnum = addrnum;
	}

	public int getAddressnum() {
		return addressnum;
	}
	public void setAddressnum(int addressnum) {
		this.addressnum = addressnum;
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
	public int getAddrstate() {
		return addrstate;
	}
	public void setAddrstate(int addrstate) {
		this.addrstate = addrstate;
	}
	public int getDeladdrstate() {
		return deladdrstate;
	}
	public void setDeladdrstate(int deladdrstate) {
		this.deladdrstate = deladdrstate;
	}
	public int getDelpostcode() {
		return delpostcode;
	}
	public void setDelpostcode(int delpostcode) {
		this.delpostcode = delpostcode;
	}
	
	
	
	
}
