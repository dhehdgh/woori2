package kr.co.dong.DTO;

public class HelpDTO {
	private int hno;
	private int membernum;
	private String title;
	private String content;
	private String recomment;
	private String hdate;
	private String rehdate;
	private String state;
	private String del;
	private MemberDTO memberDTO;
	
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRecomment() {
		return recomment;
	}
	public void setRecomment(String recomment) {
		this.recomment = recomment;
	}
	public String getHdate() {
		return hdate;
	}
	public void setHdate(String hdate) {
		this.hdate = hdate;
	}
	public String getRehdate() {
		return rehdate;
	}
	public void setRehdate(String rehdate) {
		this.rehdate = rehdate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
	public MemberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	@Override
	public String toString() {
		return "HelpDTO [hno=" + hno + ", membernum=" + membernum + ", title=" + title + ", content=" + content
				+ ", recomment=" + recomment + ", hdate=" + hdate + ", rehdate=" + rehdate + ", state=" + state
				+ ", del=" + del + ", memberDTO=" + memberDTO + "]";
	}
}
