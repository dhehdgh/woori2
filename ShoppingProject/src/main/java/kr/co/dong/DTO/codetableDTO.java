package kr.co.dong.DTO;

import lombok.Data;

@Data
public class codetableDTO {

	private String codename;		//코드이름
	private int codenum;		//코드번호
	private String codestring;		//코드값



	@Override
	public String toString() {
		return "codetableDTO[codename="+codename+", codenum="+codenum+", codestring="+codestring+"]";
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
	public String getCodestring() {
		return codestring;
	}
	public void setCodestring(String codestring) {
		this.codestring = codestring;
	}
	
}
