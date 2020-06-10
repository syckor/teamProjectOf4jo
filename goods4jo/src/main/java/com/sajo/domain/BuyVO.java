package com.sajo.domain;
//구매(Buy table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정

import java.util.ArrayList;

public class BuyVO {
	   private String bno;  
	   private String bdate;
	   private String pay; //결제수단
	   private String totalprice; //상품금액
	   private String mid;//회원번호 
	   private String gid;//주문번호
	   private String bcount;//주문수량
	   private String bname;//회사이름 
	   private String delivery;//택배회사
	   private String deliveryfee;//택배비
	   private String totalorderprice;//총 결제금액 (상품 + 택배비)
	   private String gname; // 물품 이름
	   private String startlist;
	   private String lastlist; 
	   
	  
	public BuyVO() {}
	public BuyVO(String totalprice, String mid, String gid, String bcount, String deliveryfee) {
		this.totalprice = totalprice;
		this.mid = mid;
		this.gid = gid;
		this.bcount = bcount; 
		this.deliveryfee = deliveryfee;
	}
	
	public String getStartlist() {
		return startlist;
	}
	public void setStartlist(int startlist) {
		this.startlist = String.valueOf(startlist);
	}
	public String getLastlist() {
		return lastlist; 
	}
	public void setLastlist(int lastlist) {
		this.lastlist = String.valueOf(lastlist);
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
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
	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
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
	public String getBcount() {
		return bcount;
	}
	public void setBcount(String bcount) {
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


	

