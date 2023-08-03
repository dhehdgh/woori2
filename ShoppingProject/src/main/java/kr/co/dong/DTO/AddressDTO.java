package kr.co.dong.DTO;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class addressDTO {
	private int addrnum;
	private int membernum;
	private String delroadaddr;
	private String deljibunaddr;
	private String deldetailaddr;
	private String delextraaddr;
	private int delpostcode;
	private int addrstate;
	private int deladdrstate;
	private int addressnum;
	private memberDTO memberDTO;
	
	
	public int getAddressnum() {
		return addressnum;
	}
	public void setAddressnum(int addressnum) {
		this.addressnum = addressnum;
	}
	public int getDeladdrstate() {
		return deladdrstate;
	}
	public void setDeladdrstate(int deladdrstate) {
		this.deladdrstate = deladdrstate;
	}
	public int getAddrstate() {
		return addrstate;
	}
	public void setAddrstate(int addrstate) {
		this.addrstate = addrstate;
	}
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
	
	public memberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	@Override
	public String toString() {
		return "addressDTO [addrnum=" + addrnum + ", membernum=" + membernum + ", delroadaddr=" + delroadaddr
				+ ", deljibunaddr=" + deljibunaddr + ", deldetailaddr=" + deldetailaddr + ", delextraaddr="
				+ delextraaddr + ", delpostcode=" + delpostcode + ", addrstate=" + addrstate + ", deladdrstate="
				+ deladdrstate + ", addressnum=" + addressnum + ", memberDTO=" + memberDTO + "]";
	}
}
