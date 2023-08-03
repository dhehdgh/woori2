package kr.co.dong.DTO;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class itemDTO {
	public int itemnum;
	public String itemname;
	public int itempay;
	public String itemdate;
	public int itemb;
	public String itemb_nm;
	public int items;
	public String items_nm;
	public String itemcontent;
	public float rstar;
	public float sale;
	private iv_itemDTO iv_itemDTO;
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private int imgnum;
	private int numbers;
	private int count;
	private String imgname;
	private String url;
	private String allitemsize;
	private String allitemcolor;
	private mylistDTO mylistDTO;
	private int heart;
	private int rcount;
	private int rstarsum;
	private int buycntsum;
	private float ravg;
	private reviewDTO reviewDTO;
	private int total_buycnt;
	private int itembuycnt;
	
	public void setItemsize(int itemsize) {
		if (this.iv_itemDTO == null) {
		this.iv_itemDTO = new iv_itemDTO();
		}
		this.iv_itemDTO.setItemsize(itemsize);
		}

		public void setItemcolor(int itemcolor) {
		if (this.iv_itemDTO == null) {
		this.iv_itemDTO = new iv_itemDTO();
		}
		this.iv_itemDTO.setItemcolor(itemcolor);
		}

		public void setCodestring(String codestring) {
		if (this.codetableDTO == null) {
		this.codetableDTO = new codetableDTO();
		}
		this.codetableDTO.setCodestring(codestring);
		}

		public void setColorstring(String colorstring) {
		if (this.codetableDTO == null) {
		this.codetableDTO = new codetableDTO();
		}
		this.codetableDTO.setColorstring(colorstring);
		}

		public void setSizestring(String sizestring) {
		if (this.codetableDTO == null) {
		this.codetableDTO = new codetableDTO();
		}
		this.codetableDTO.setSizestring(sizestring);
		}
	
	
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public int getRstarsum() {
		return rstarsum;
	}
	public void setRstarsum(int rstarsum) {
		this.rstarsum = rstarsum;
	}
	public int getBuycntsum() {
		return buycntsum;
	}
	public void setBuycntsum(int buycntsum) {
		this.buycntsum = buycntsum;
	}
	public float getRavg() {
		return ravg;
	}
	public void setRavg(float ravg) {
		this.ravg = ravg;
	}
	public reviewDTO getReviewDTO() {
		return reviewDTO;
	}
	public void setReviewDTO(reviewDTO reviewDTO) {
		this.reviewDTO = reviewDTO;
	}
	public int getTotal_buycnt() {
		return total_buycnt;
	}
	public void setTotal_buycnt(int total_buycnt) {
		this.total_buycnt = total_buycnt;
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
	public float getSale() {
		return sale;
	}
	public void setSale(float sale) {
		this.sale = sale;
	}
	public iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}
	public void setIv_itemDTO(iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}
	public codetableDTO getCodetableDTO() {
		return codetableDTO;
	}
	public void setCodetableDTO(codetableDTO codetableDTO) {
		this.codetableDTO = codetableDTO;
	}
	public imgDTO getImgDTO() {
		return imgDTO;
	}
	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}
	public int getImgnum() {
		return imgnum;
	}
	public void setImgnum(int imgnum) {
		this.imgnum = imgnum;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getAllitemsize() {
		return allitemsize;
	}
	public void setAllitemsize(String allitemsize) {
		this.allitemsize = allitemsize;
	}
	public String getAllitemcolor() {
		return allitemcolor;
	}
	public void setAllitemcolor(String allitemcolor) {
		this.allitemcolor = allitemcolor;
	}
	public mylistDTO getMylistDTO() {
		return mylistDTO;
	}
	public void setMylistDTO(mylistDTO mylistDTO) {
		this.mylistDTO = mylistDTO;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	
	public String getItemb_nm() {
		return itemb_nm;
	}

	public void setItemb_nm(String itemb_nm) {
		this.itemb_nm = itemb_nm;
	}

	public String getItems_nm() {
		return items_nm;
	}

	public void setItems_nm(String items_nm) {
		this.items_nm = items_nm;
	}

	public int getItembuycnt() {
		return itembuycnt;
	}

	public void setItembuycnt(int itembuycnt) {
		this.itembuycnt = itembuycnt;
	}

	@Override
	public String toString() {
		return "itemDTO [itemnum=" + itemnum + ", itemname=" + itemname + ", itempay=" + itempay + ", itemdate="
				+ itemdate + ", itemb=" + itemb + ", itemb_nm=" + itemb_nm + ", items=" + items + ", items_nm="
				+ items_nm + ", itemcontent=" + itemcontent + ", rstar=" + rstar + ", sale=" + sale + ", iv_itemDTO="
				+ iv_itemDTO + ", codetableDTO=" + codetableDTO + ", imgDTO=" + imgDTO + ", imgnum=" + imgnum
				+ ", numbers=" + numbers + ", count=" + count + ", imgname=" + imgname + ", url=" + url
				+ ", allitemsize=" + allitemsize + ", allitemcolor=" + allitemcolor + ", mylistDTO=" + mylistDTO
				+ ", heart=" + heart + ", rcount=" + rcount + ", rstarsum=" + rstarsum + ", buycntsum=" + buycntsum
				+ ", ravg=" + ravg + ", reviewDTO=" + reviewDTO + ", total_buycnt=" + total_buycnt + ", itembuycnt="
				+ itembuycnt + "]";
	}

	

}