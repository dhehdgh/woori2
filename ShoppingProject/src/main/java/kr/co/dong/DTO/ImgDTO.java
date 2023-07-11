package kr.co.dong.DTO;

public class ImgDTO {
	private int imgnum;
	private int itemnum;
	private String url;
	private String imgname;
	
	public int getImgnum() {
		return imgnum;
	}
	public void setImgnum(int imgnum) {
		this.imgnum = imgnum;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	
	@Override
	public String toString() {
		return "ImgDTO [imgnum=" + imgnum + ", itemnum=" + itemnum + ", url=" + url + ", imgname=" + imgname + "]";
	}
}
