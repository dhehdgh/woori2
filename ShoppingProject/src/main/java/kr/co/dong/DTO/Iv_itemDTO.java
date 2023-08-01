package kr.co.dong.DTO;

public class Iv_itemDTO {
	private int iv_itemnum;
	private int itemnum;
	private int itemcnt;
	private String itemsize;
	private String itemcolor;
	private String iv_date;
	private String itemstate;
	
	public int getIv_itemnum() {
		return iv_itemnum;
	}
	public void setIv_itemnum(int iv_itemnum) {
		this.iv_itemnum = iv_itemnum;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getItemcnt() {
		return itemcnt;
	}
	public void setItemcnt(int itemcnt) {
		this.itemcnt = itemcnt;
	}
	public String getItemsize() {
		return itemsize;
	}
	public void setItemsize(String itemsize) {
		this.itemsize = itemsize;
	}
	public String getItemcolor() {
		return itemcolor;
	}
	public void setItemcolor(String itemcolor) {
		this.itemcolor = itemcolor;
	}
	public String getIv_date() {
		return iv_date;
	}
	public void setIv_date(String iv_date) {
		this.iv_date = iv_date;
	}
	public String getItemstate() {
		return itemstate;
	}
	public void setItemstate(String itemstate) {
		this.itemstate = itemstate;
	}
	@Override
	public String toString() {
		return "Iv_itemDTO [iv_itemnum=" + iv_itemnum + ", itemnum=" + itemnum + ", itemcnt=" + itemcnt + ", itemsize="
				+ itemsize + ", itemcolor=" + itemcolor + ", iv_date=" + iv_date + ", itemstate=" + itemstate + "]";
	}
	
	
	
}
