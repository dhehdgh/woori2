package kr.co.dong.DTO;

import lombok.Data;

@Data
public class itemDTO {

	private int itemnum;			//상품번호
	private String itemname;		//상품이름
	private int itempay;			//상품가격
	private int itembuycnt;			//상품판매량
	private String itemdate;		//상품등록날짜
	private int itemb;				//대분류
	private int items;				//소분류
	private String itemcontent;		//상품내용
	private int rstar;				//평점
	
	public int getitemnum;
	
	@Override
	public String toString() {
		return "itemDTO [itemnum="+itemnum+", itemname="+itemname+", itempay="+itempay+", itembuycnt="+
				itembuycnt+", itemdate="+itemdate+", itemb="+itemb+", items="+items+", itemcontent="+itemcontent+
				", rstar="+rstar+"]";
	}
	
	
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public int getItempay() {
		return itempay;
	}
	public void setItempay(int itempay) {
		this.itempay = itempay;
	}
	public int getItembuycnt() {
		return itembuycnt;
	}
	public void setItembuycnt(int itembuycnt) {
		this.itembuycnt = itembuycnt;
	}
	public String getItemdate() {
		return itemdate;
	}
	public void setItemdate(String itemdate) {
		this.itemdate = itemdate;
	}
	public int getItemb() {
		return itemb;
	}
	public void setItemb(int itemb) {
		this.itemb = itemb;
	}
	public int getItems() {
		return items;
	}
	public void setItems(int items) {
		this.items = items;
	}
	public String getItemcontent() {
		return itemcontent;
	}
	public void setItemcontent(String itemcontent) {
		this.itemcontent = itemcontent;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	
	
}
