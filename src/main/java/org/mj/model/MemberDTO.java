package org.mj.model;

public class MemberDTO {
	private String u_name;
	private String u_id;
	private String u_pw;
	private String u_nick;
	private String u_tel;
	private String u_address;
	private String u_email;
	
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_nick() {
		return u_nick;
	}
	public void setU_nick(String u_nick) {
		this.u_nick = u_nick;
	}
	public String getU_tel() {
		return u_tel;
	}
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [u_name=" + u_name + ", u_id=" + u_id + ", u_pw=" + u_pw + ", u_nick=" + u_nick + ", u_tel="
				+ u_tel + ", u_adderss=" + u_address + ", u_email=" + u_email + "]";
	}
	
}
