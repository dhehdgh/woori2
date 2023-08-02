package kr.co.dong.DTO;

import lombok.Data;

@Data
public class imgDTO {

	private int imgnum;			//이미지번호
	private int itemnum;		//상품번호
	private String url;			//이미지폴더경로
	private String imgname;		//이지미이름
	
	
	
	@Override
	public String toString() {
		return "imgDTO[imgbum="+imgnum+", itemnum="+itemnum+", url="+url+", imgname="+imgname+"]";
	}
	
	
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
	
	
	
	
}
