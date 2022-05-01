package org.mj.model;

public class ShopDTO {
	private int shopno;
	private String shopname;
	private String shoptel;
	private String shopaddress;
	private String shoptime;
	private String ransrc;
	
	public int getShopno() {
		return shopno;
	}
	public void setShopno(int shopno) {
		this.shopno = shopno;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getShoptel() {
		return shoptel;
	}
	public void setShoptel(String shoptel) {
		this.shoptel = shoptel;
	}
	public String getShopaddress() {
		return shopaddress;
	}
	public void setShopaddress(String shopaddress) {
		this.shopaddress = shopaddress;
	}
	public String getShoptime() {
		return shoptime;
	}
	public void setShoptime(String shoptime) {
		this.shoptime = shoptime;
	}
	public String getRansrc() {
		return ransrc;
	}
	public void setRansrc(String ransrc) {
		this.ransrc = ransrc;
	}
	
	@Override
	public String toString() {
		return "ShopDTO [shopno=" + shopno + ", shopname=" + shopname + ", shoptel=" + shoptel + ", shopaddress="
				+ shopaddress + ", shoptime=" + shoptime + ", ransrc=" + ransrc + "]";
	}
	
	
}
