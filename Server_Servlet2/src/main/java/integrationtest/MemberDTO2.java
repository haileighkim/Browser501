package integrationtest;

import java.sql.Date;

public class MemberDTO2 {

	private String id;
	private String pw;
	private String name;
	private String addr;
	private String tel;
	private Date date;
	
	public MemberDTO2(String id, String pw, String name, String addr, String tel, String date) {
			}
	
	public MemberDTO2(String id2, String pw2) {
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	
	
	
	
}
