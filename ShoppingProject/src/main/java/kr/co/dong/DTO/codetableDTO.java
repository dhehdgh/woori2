package kr.co.dong.DTO;

public class codetableDTO {
	public String codename;
	public int codenum;
	public String codestring;
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
	@Override
	public String toString() {
		return "codetableDTO [codename=" + codename + ", codenum=" + codenum + ", codestring=" + codestring + "]";
	}
	
	
}
