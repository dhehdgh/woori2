package kr.co.dong.DTO;

public class ItemDTO {
	private int itemnum;
	private String itemname;
	private int itempay;
	private int itembuycnt;
	private String itemdate;
	private int itemb;
	private int items;
	private String itemcontent;
	private double rstar;
	private double sale;
	private Iv_itemDTO iv_itemDTO;
	private ImgDTO imgDTO;
	
	public Iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}
	public void setIv_itemDTO(Iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
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
	public double getRstar() {
		return rstar;
	}
	public void setRstar(double rstar) {
		this.rstar = rstar;
	}
	public ImgDTO getImgDTO() {
		return imgDTO;
	}
	public void setImgDTO(ImgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}
	public double getSale() {
		return sale;
	}
	public void setSale(double sale) {
		this.sale = sale;
	}
	
	@Override
	public String toString() {
		return "ItemDTO [itemnum=" + itemnum + ", itemname=" + itemname + ", itempay=" + itempay + ", itembuycnt="
				+ itembuycnt + ", itemdate=" + itemdate + ", itemb=" + itemb + ", items=" + items + ", itemcontent="
				+ itemcontent + ", rstar=" + rstar + ", sale=" + sale + ", iv_itemDTO=" + iv_itemDTO + ", imgDTO="
				+ imgDTO + "]";
	}
}
