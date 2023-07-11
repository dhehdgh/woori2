package kr.co.dong.DTO;

public class Iv_itemDTO {
	private int iv_itemnum;
	private int itemnum;
	private int itemcnt;
	private int itemsize;
	private int itemcolor;
	private int iv_date;
	private int itemstate;
	
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
	public int getItemsize() {
		return itemsize;
	}
	public void setItemsize(int itemsize) {
		this.itemsize = itemsize;
	}
	public int getItemcolor() {
		return itemcolor;
	}
	public void setItemcolor(int itemcolor) {
		this.itemcolor = itemcolor;
	}
	public int getIv_date() {
		return iv_date;
	}
	public void setIv_date(int iv_date) {
		this.iv_date = iv_date;
	}
	public int getItemstate() {
		return itemstate;
	}
	public void setItemstate(int itemstate) {
		this.itemstate = itemstate;
	}
	
	@Override
	public String toString() {
		return "Iv_itemDTO [iv_itemnum=" + iv_itemnum + ", itemnum=" + itemnum + ", itemcnt=" + itemcnt + ", itemsize="
				+ itemsize + ", itemcolor=" + itemcolor + ", iv_date=" + iv_date + ", itemstate=" + itemstate + "]";
	}
	
	
}
