package kr.co.dong.DTO;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class codetableDTO {
	private String codename;
	private int codenum;
	private String codestring;
	private String colorstring;
	private String sizestring;
	private String ratingstring;
	private String allitemsize;
	private String allitemcolor;
	private int itemcolor;
	private int itemsize;
	private String selectedSize;
	private String selectedcolor;
	private itemDTO itemDTO;
	private int bcount;
	private int itemcnt;
	
	
	
	
	public itemDTO getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}
	public int getBcount() {
		return bcount;
	}
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}
	public String getSelectedSize() {
		return selectedSize;
	}
	public void setSelectedSize(String selectedSize) {
		this.selectedSize = selectedSize;
	}
	public String getSelectedcolor() {
		return selectedcolor;
	}
	public void setSelectedcolor(String selectedcolor) {
		this.selectedcolor = selectedcolor;
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
	public String getAllitemcolor() {
		return allitemcolor;
	}
	public void setAllitemcolor(String allitemcolor) {
		this.allitemcolor = allitemcolor;
	}
	public String getAllitemsize() {
		return allitemsize;
	}
	public void setAllitemsize(String allitemsize) {
		this.allitemsize = allitemsize;
	}
	public String getRatingstring() {
		return ratingstring;
	}
	public void setRatingstring(String ratingstring) {
		this.ratingstring = ratingstring;
	}
	public String getColorstring() {
		return colorstring;
	}
	public void setColorstring(String colorstring) {
		this.colorstring = colorstring;
	}
	public String getSizestring() {
		return sizestring;
	}
	public void setSizestring(String sizestring) {
		this.sizestring = sizestring;
	}
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	public int getCodenum() {
		return codenum;
	}
	public void setCodenum(int codenum) {
		this.codenum = codenum;
	}

	
	public int getItemcnt() {
		return itemcnt;
	}
	public void setItemcnt(int itemcnt) {
		this.itemcnt = itemcnt;
	}
	public String getCodestring() {
		return codestring;
	}
	public void setCodestring(String codestring) {
		this.codestring = codestring;
	}
	@Override
	public String toString() {
		return "codetableDTO [codename=" + codename + ", codenum=" + codenum + ", codestring=" + codestring
				+ ", colorstring=" + colorstring + ", sizestring=" + sizestring + ", ratingstring=" + ratingstring
				+ ", allitemsize=" + allitemsize + ", allitemcolor=" + allitemcolor + ", itemcolor=" + itemcolor
				+ ", itemsize=" + itemsize + ", selectedSize=" + selectedSize + ", selectedcolor=" + selectedcolor
				+ ", itemDTO=" + itemDTO + ", bcount=" + bcount + ", itemcnt=" + itemcnt + "]";
	}

}
