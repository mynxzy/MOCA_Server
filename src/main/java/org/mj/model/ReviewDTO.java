package org.mj.model;

public class ReviewDTO {
	private int rno;
	private String title;
	private String content;
	private String nick;
	private String regdate;
	private String u_id;
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	@Override
	public String toString() {
		return "ReviewDTO [rno=" + rno + ", title=" + title + ", content=" + content + ", nick=" + nick + ", regdate="
				+ regdate + ", u_id=" + u_id + "]";
	}
	
}
