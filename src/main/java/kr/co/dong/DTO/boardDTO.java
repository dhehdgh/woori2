package kr.co.dong.DTO;

public class boardDTO {
	
	private int bno;
	private int membernum;
	private int viewcnt;
	private int del;
	private int numbers;
	private int boardcount;
	private String title;
	private String content;
	private String regdate;
	private memberDTO memberDTO;
	
	

	public int getBoardcount() {
		return boardcount;
	}
	public void setBoardcount(int boardcount) {
		this.boardcount = boardcount;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public memberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
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
	
	public void setId(String id) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setId(id);
	}
	
	@Override
	public String toString() {
		return "boardDTO [bno=" + bno + ", membernum=" + membernum + ", viewcnt=" + viewcnt + ", del=" + del
				+ ", numbers=" + numbers + ", boardcount=" + boardcount + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", memberDTO=" + memberDTO + "]";
	}
	
	
	
}
