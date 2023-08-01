package kr.co.dong.DTO;

public class ReviewDTO {
	private int reviewno;
	private int itemnum;
	private int membernum;
	private int buynum;
	private String rcontent;
	private String rdate;
	private int rstar;
	private int reviewlike;
	private int reviewreport;
	private String del;
	private MemberDTO memberDTO;
	private ItemDTO itemDTO;
	
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public int getReviewlike() {
		return reviewlike;
	}
	public void setReviewlike(int reviewlike) {
		this.reviewlike = reviewlike;
	}
	public int getReviewreport() {
		return reviewreport;
	}
	public void setReviewreport(int reviewreport) {
		this.reviewreport = reviewreport;
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
	public ItemDTO getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(ItemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}
	@Override
	public String toString() {
		return "ReviewDTO [reviewno=" + reviewno + ", itemnum=" + itemnum + ", membernum=" + membernum + ", buynum="
				+ buynum + ", rcontent=" + rcontent + ", rdate=" + rdate + ", rstar=" + rstar + ", reviewlike="
				+ reviewlike + ", reviewreport=" + reviewreport + ", del=" + del + ", memberDTO=" + memberDTO
				+ ", itemDTO=" + itemDTO + "]";
	}
	
	
	
}
