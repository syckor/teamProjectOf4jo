package com.sajo.domain;
//구매(Buy table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정

public class BuyVO {
	private int bno=0;
	private String bdate;
	private String pay; 
	private int  totalgoodspay=0;
	private String mid;
	private String gid;
	private int bcount=0;
	private String bname;
	private String delivery;
	private String deliveryfee;
	private String totalorderprice;
	private String gname;
	
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public int getTotalgoodspay() {
		return totalgoodspay;
	}
	public void setTotalgoodspay(int totalgoodspay) {
		this.totalgoodspay = totalgoodspay;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public int getBcount() {
		return bcount;
	}
	public void setBcount(int bcount) {
		this.bcount = bcount;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public String getDeliveryfee() {
		return deliveryfee;
	}
	public void setDeliveryfee(String deliveryfee) {
		this.deliveryfee = deliveryfee;
	}
	public String getTotalorderprice() {
		return totalorderprice;
	}
	public void setTotalorderprice(String totalorderprice) {
		this.totalorderprice = totalorderprice;
	}
	
	
	
}


	

