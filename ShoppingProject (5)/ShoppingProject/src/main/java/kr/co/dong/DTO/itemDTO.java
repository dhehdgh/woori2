package kr.co.dong.DTO;

public class itemDTO {
	public int itemnum;
	public String itemname;
	public int itempay;
	public String itemdate;
	public int itemb;
	public int items;
	public String itemcontent;
	public float rstar;
	public float sale;
	
	
	public float getSale() {
		return sale;
	}
	public void setSale(float sale) {
		this.sale = sale;
	}
	private imgDTO imgDTO;
	
	public imgDTO getImgDTO() {
		return imgDTO;
	}
	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
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
	public float getRstar() {
		return rstar;
	}
	public void setRstar(float rstar) {
		this.rstar = rstar;
	}
	@Override
	public String toString() {
		return "itemDTO [itemnum=" + itemnum + ", itemname=" + itemname + ", itempay=" + itempay + ", itemdate="
				+ itemdate + ", itemb=" + itemb + ", items=" + items + ", itemcontent=" + itemcontent + ", rstar="
				+ rstar + ", sale=" + sale + ", imgDTO=" + imgDTO + "]";
	}
	
	
	
	
	
	
}
