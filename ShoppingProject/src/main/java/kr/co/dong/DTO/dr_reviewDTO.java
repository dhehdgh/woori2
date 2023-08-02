package kr.co.dong.DTO;

import lombok.Data;

@Data
public class dr_reviewDTO {

	private int drnum;			//신고번호
	private int reviewno;		//리뷰번호
	private String drcontent;		//신고내용
	private String drdate;		//신고날짜
	
	
	
	@Override
	public String toString() {
		return "dr_reviewDTO [drnum="+drnum+", reviewno="+reviewno+",drcontent="+drcontent+",drdate="+drdate+"]";
	}
	public int getDrnum() {
		return drnum;
	}
	public void setDrnum(int drnum) {
		this.drnum = drnum;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public String getDrcontent() {
		return drcontent;
	}
	public void setDrcontent(String drcontent) {
		this.drcontent = drcontent;
	}
	public String getDrdate() {
		return drdate;
	}
	public void setDrdate(String drdate) {
		this.drdate = drdate;
	}
	
	
}
