package kr.co.dong.DTO;

import java.util.List;

import lombok.Data;

@Data
public class cartDTO {
	
	private int cartno;
	private int membernum;
	private int itemnum;
	private int itemcnt;
	private int iv_itemnum;
	private  dv_order_itemDTO dv_order_itemDTO; //상품DTO
	private  itemDTO itemDTO; //상품DTO
	private memberDTO memberDTO; //회원DTO
	private imgDTO imgDTO; //이미지DTO
	private iv_itemDTO iv_itemDTO; //상품상세DTO
	private int cartcount;
	private codetableDTO codetableDTO;
	private ratinglistDTO ratinglistDTO;
	private int cartstate;
	private addressDTO addressDTO;
	private List<Integer> cartnoList;
	
	
	public int getCartcount() {
		return cartcount;
	}


	public void setCartcount(int cartcount) {
		this.cartcount = cartcount;
	}


	public codetableDTO getCodetableDTO() {
		return codetableDTO;
	}


	public void setCodetableDTO(codetableDTO codetableDTO) {
		this.codetableDTO = codetableDTO;
	}


	public ratinglistDTO getRatinglistDTO() {
		return ratinglistDTO;
	}


	public void setRatinglistDTO(ratinglistDTO ratinglistDTO) {
		this.ratinglistDTO = ratinglistDTO;
	}


	public int getCartstate() {
		return cartstate;
	}


	public void setCartstate(int cartstate) {
		this.cartstate = cartstate;
	}


	public addressDTO getAddressDTO() {
		return addressDTO;
	}


	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}


	public List<Integer> getCartnoList() {
		return cartnoList;
	}


	public void setCartnoList(List<Integer> cartnoList) {
		this.cartnoList = cartnoList;
	}


	public int getIv_itemnum() {
		return iv_itemnum;
	}


	public void setIv_itemnum(int iv_itemnum) {
		this.iv_itemnum = iv_itemnum;
	}

	
	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}


	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}

	
	
	public iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}


	public void setIv_itemDTO(iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}


	public imgDTO getImgDTO() {
		return imgDTO;
	}


	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}


	public itemDTO getItemDTO() {
		return itemDTO;
	}


	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}


	public memberDTO getMemberDTO() {
		return memberDTO;
	}


	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}


	
	
	
	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
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
	
	public void setItemname(String itemname) {
	    if (this.itemDTO == null) {
	        this.itemDTO = new itemDTO();
	    }
	    this.itemDTO.setItemname(itemname);
	}
	
	public void setItempay(int itempay) {
	    if (this.itemDTO == null) {
	        this.itemDTO = new itemDTO();
	    }
	    this.itemDTO.setItempay(itempay);
	}
	
	public void setSale(float sale) {
	    if (this.itemDTO == null) {
	        this.itemDTO = new itemDTO();
	    }
	    this.itemDTO.setSale(sale);
	}
	
	
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
	
	public void setRatingstring(String ratingstring) {
	    if (this.codetableDTO == null) {
	        this.codetableDTO = new codetableDTO();
	    }
	    this.codetableDTO.setRatingstring(ratingstring);
	}
	
	public void setAllitemsize(String allitemsize) {
	    if (this.codetableDTO == null) {
	        this.codetableDTO = new codetableDTO();
	    }
	    this.codetableDTO.setAllitemsize(allitemsize);
	}
	
	public void setAllitemcolor(String allitemcolor) {
	    if (this.codetableDTO == null) {
	        this.codetableDTO = new codetableDTO();
	    }
	    this.codetableDTO.setAllitemcolor(allitemcolor);
	}
	
	public void setUrl(String url) {
	    if (this.imgDTO == null) {
	        this.imgDTO = new imgDTO();
	    }
	    this.imgDTO.setUrl(url);
	}
	
	public void setImgname(String imgname) {
	    if (this.imgDTO == null) {
	        this.imgDTO = new imgDTO();
	    }
	    this.imgDTO.setImgname(imgname);
	}
	
	public void setImgnum(int imgnum) {
	    if (this.imgDTO == null) {
	        this.imgDTO = new imgDTO();
	    }
	    this.imgDTO.setImgnum(imgnum);
	}
	
	public void setName(String name) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setName(name);
	}
	
	public void setEmail(String email) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setEmail(email);
	}
	
	public void setTel(String tel) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setTel(tel);
	}
	
	public void setRoadaddr(String roadaddr) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setRoadaddr(roadaddr);
	}
	
	public void setJibunaddr(String jibunaddr) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setJibunaddr(jibunaddr);
	}
	
	public void setDetailaddr(String detailaddr) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setDetailaddr(detailaddr);
	}
	
	public void setExtraaddr(String extraaddr) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setExtraaddr(extraaddr);
	}
	
	public void setPoint(int point) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setPoint(point);
	}
	
	public void setPointac(int pointtac) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setPointac(pointtac);
	}
	
	public void setPostcode(int postcode) {
	    if (this.memberDTO == null) {
	        this.memberDTO = new memberDTO();
	    }
	    this.memberDTO.setPostcode(postcode);
	}
	
	public void setRating(int rating) {
	    if (this.ratinglistDTO == null) {
	        this.ratinglistDTO = new ratinglistDTO();
	    }
	    this.ratinglistDTO.setRating(rating);
	}
	
	public void setLowpoint(int Lowpoint) {
	    if (this.ratinglistDTO == null) {
	        this.ratinglistDTO = new ratinglistDTO();
	    }
	    this.ratinglistDTO.setLowpoint(Lowpoint);
	}
	
	public void setAddrnum(int addrnum) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setAddrnum(addrnum);
	}
	
	public void setHighpoint(int highpoint) {
	    if (this.ratinglistDTO == null) {
	        this.ratinglistDTO = new ratinglistDTO();
	    }
	    this.ratinglistDTO.setHighpoint(highpoint);
	}
	
	public void setDelroadaddr(String delroadaddr) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setDelroadaddr(delroadaddr);
	}
	
	public void setDeljibunaddr(String deljibunaddr) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setDeljibunaddr(deljibunaddr);
	}
	
	public void setDeldetailaddr(String deldetailaddr) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setDeldetailaddr(deldetailaddr);
	}
	
	public void setDelextraaddr(String delextraaddr) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setDelextraaddr(delextraaddr);
	}
	
	public void setDelpostcode(int delpostcode) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setDelpostcode(delpostcode);
	}
	
	public void setAddrstate(int addrstate) {
	    if (this.addressDTO == null) {
	        this.addressDTO = new addressDTO();
	    }
	    this.addressDTO.setAddrstate(addrstate);
	}


	@Override
	public String toString() {
		return "cartDTO [cartno=" + cartno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", itemcnt="
				+ itemcnt + ", iv_itemnum=" + iv_itemnum + ", dv_order_itemDTO=" + dv_order_itemDTO + ", itemDTO="
				+ itemDTO + ", memberDTO=" + memberDTO + ", imgDTO=" + imgDTO + ", iv_itemDTO=" + iv_itemDTO
				+ ", cartcount=" + cartcount + ", codetableDTO=" + codetableDTO + ", ratinglistDTO=" + ratinglistDTO
				+ ", cartstate=" + cartstate + ", addressDTO=" + addressDTO + ", cartnoList=" + cartnoList + "]";
	}


	


	


	
	

	



}
