package kr.co.dong.DTO;

public class mylistDTO {
	private int zno;
	private int membernum;
	private int itemnum;
	private itemDTO itemDTO; //아이템DTO
	private imgDTO imgDTO; //이미지DTO
	
	public imgDTO getImgDTO() {
		return imgDTO;
	}
	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}
	public String itemsname; //대분류
	public String itembname;	//소분류
	
	public String getItembname() {
		return itembname;
	}
	public void setItembname(String itembname) {
		this.itembname = itembname;
	}
	
	public String getItemsname() {
		return itemsname;
	}
	public void setItemsname(String itemsname) {
		this.itemsname = itemsname;
	}
	public itemDTO getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}
	public int getZno() {
		return zno;
	}
	public void setZno(int zno) {
		this.zno = zno;
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
	@Override
	public String toString() {
		return "mylistDTO [zno=" + zno + ", membernum=" + membernum + ", itemnum=" + itemnum + ", itemDTO=" + itemDTO
				+ ", imgDTO=" + imgDTO + ", itemsname=" + itemsname + ", itembname=" + itembname + "]";
	}
	

	
	
}
