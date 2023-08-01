package kr.co.dong.DTO;

public class boardDTO {
	private int bno;
	private int membernum;
	private String title;
	private String content;
	private String regdate;
	private int viewcnt;
	private int del;
	
	
	@Override
	public String toString() {
		return "boardDTO [bno=" + bno + ", membernum=" + membernum + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", del=" + del + "]";
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
}
