package kr.co.dong.DTO;

public class ReturnDTO {
	private int returnnum;
	private int buynum;
	private String returncontent;
	private String returndate;
	private String recomdate;
	private int state;
	private int type;
	
	
	public int getReturnnum() {
		return returnnum;
	}
	public void setReturnnum(int returnnum) {
		this.returnnum = returnnum;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getReturncontent() {
		return returncontent;
	}
	public void setReturncontent(String returncontent) {
		this.returncontent = returncontent;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public String getRecomdate() {
		return recomdate;
	}
	public void setRecomdate(String recomdate) {
		this.recomdate = recomdate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "ReturnDTO [returnnum=" + returnnum + ", buynum=" + buynum + ", returncontent=" + returncontent
				+ ", returndate=" + returndate + ", recomdate=" + recomdate + ", state=" + state + ", type=" + type
				+ "]";
	}
}
