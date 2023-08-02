package kr.co.dong.DTO;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class iv_itemDTO {
	private int iv_itemnum;
	private int itemnum;
	private int itemcnt;
	private int itemsize;
	private int itemcolor;
	private String iv_date;
	private int itemstate;
	private int itembuycnt;
	private List<Integer> iv_itemnumList;
	private List<Integer> itemcntList;
	private List<Integer> updateitemcList;
	public String sizestring;
	public String colorstring;
	
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
	public String getIv_date() {
		return iv_date;
	}
	public void setIv_date(String iv_date) {
		this.iv_date = iv_date;
	}
	public int getItemstate() {
		return itemstate;
	}
	public void setItemstate(int itemstate) {
		this.itemstate = itemstate;
	}
	public int getItembuycnt() {
		return itembuycnt;
	}
	public void setItembuycnt(int itembuycnt) {
		this.itembuycnt = itembuycnt;
	}
	public List<Integer> getIv_itemnumList() {
		return iv_itemnumList;
	}
	public void setIv_itemnumList(List<Integer> iv_itemnumList) {
		this.iv_itemnumList = iv_itemnumList;
	}
	public List<Integer> getItemcntList() {
		return itemcntList;
	}
	public void setItemcntList(List<Integer> itemcntList) {
		this.itemcntList = itemcntList;
	}
	public List<Integer> getUpdateitemcList() {
		return updateitemcList;
	}
	public void setUpdateitemcList(List<Integer> updateitemcList) {
		this.updateitemcList = updateitemcList;
	}
	@Override
	public String toString() {
		return "iv_itemDTO [iv_itemnum=" + iv_itemnum + ", itemnum=" + itemnum + ", itemcnt=" + itemcnt + ", itemsize="
				+ itemsize + ", itemcolor=" + itemcolor + ", iv_date=" + iv_date + ", itemstate=" + itemstate
				+ ", itembuycnt=" + itembuycnt + ", iv_itemnumList=" + iv_itemnumList + ", itemcntList=" + itemcntList
				+ ", updateitemcList=" + updateitemcList + "]";
	}
	public String getSizestring() {
		return sizestring;
	}
	public void setSizestring(String sizestring) {
		this.sizestring = sizestring;
	}
	public String getColorstring() {
		return colorstring;
	}
	public void setColorstring(String colorstring) {
		this.colorstring = colorstring;
	}
	
	
	
	
	
}
