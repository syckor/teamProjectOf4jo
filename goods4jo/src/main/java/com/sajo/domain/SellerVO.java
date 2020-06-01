package com.sajo.domain;
//판매자(Seller table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class SellerVO {
	 
	private int sid;
	private String sname;
	private int account;
	private String bank;
	private String saddr;
	private String mid;
	private String postnumber;
	 
	
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}

	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public String getSaddr() {
		return saddr;
	}
	public void setSaddr(String loadaddr, String detailofaddr ) {
		this.saddr = loadaddr + " " + detailofaddr;
	} 
	public String getMid() {
		return mid; 
	}
	public String getPostnumber() {
		return postnumber;
	}
	public void setPostnumber(String postnumber) {
		this.postnumber = postnumber;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	
}
