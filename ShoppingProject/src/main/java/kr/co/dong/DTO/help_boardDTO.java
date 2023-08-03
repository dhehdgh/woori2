package kr.co.dong.DTO;

public class help_boardDTO {
	private int hno;
	private int membernum;
	private int helppw;
	private int openstate;
	private int viewcnt;
	private int del;
	private String del_nm;
	private int numbers;
	private int boardcount;
	private int state;
	private String state_nm;
	private String title;
	private String content;
	private String hdate;
	private String rehdate;
	private String recomment;
	private memberDTO memberDTO;
	
	
	
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public memberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

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
	public int getHelppw() {
		return helppw;
	}
	public void setHelppw(int helppw) {
		this.helppw = helppw;
	}
	public int getOpenstate() {
		return openstate;
	}
	public void setOpenstate(int openstate) {
		this.openstate = openstate;
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
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public int getBoardcount() {
		return boardcount;
	}
	public void setBoardcount(int boardcount) {
		this.boardcount = boardcount;
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
	
	public String getDel_nm() {
		return del_nm;
	}
	public void setDel_nm(String del_nm) {
		this.del_nm = del_nm;
	}
	public String getState_nm() {
		return state_nm;
	}
	public void setState_nm(String state_nm) {
		this.state_nm = state_nm;
	}
	public void setId(String id) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setId(id);
	}
	
	public String getRecomment() {
		return recomment;
	}
	public void setRecomment(String recomment) {
		this.recomment = recomment;
	}
	@Override
	public String toString() {
		return "help_boardDTO [hno=" + hno + ", membernum=" + membernum + ", helppw=" + helppw + ", openstate="
				+ openstate + ", viewcnt=" + viewcnt + ", del=" + del + ", del_nm=" + del_nm + ", numbers=" + numbers
				+ ", boardcount=" + boardcount + ", state=" + state + ", state_nm=" + state_nm + ", title=" + title
				+ ", content=" + content + ", hdate=" + hdate + ", rehdate=" + rehdate + ", recomment=" + recomment
				+ ", memberDTO=" + memberDTO + ", getState()=" + getState() + ", getMemberDTO()=" + getMemberDTO()
				+ ", getHno()=" + getHno() + ", getMembernum()=" + getMembernum() + ", getHelppw()=" + getHelppw()
				+ ", getOpenstate()=" + getOpenstate() + ", getViewcnt()=" + getViewcnt() + ", getDel()=" + getDel()
				+ ", getNumbers()=" + getNumbers() + ", getBoardcount()=" + getBoardcount() + ", getTitle()="
				+ getTitle() + ", getContent()=" + getContent() + ", getHdate()=" + getHdate() + ", getRehdate()="
				+ getRehdate() + ", getDel_nm()=" + getDel_nm() + ", getState_nm()=" + getState_nm()
				+ ", getRecomment()=" + getRecomment() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
}
