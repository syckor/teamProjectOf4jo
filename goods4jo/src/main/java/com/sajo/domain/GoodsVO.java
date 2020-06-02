package com.sajo.domain;

import org.springframework.web.multipart.MultipartFile;

//상품(Goods table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class GoodsVO {
	private String gid;
	private String gname;
	private String state;
	private int count;
	private int price;
	private String option1;
	private String option2;
	private String delivery;
	private int dcost;
	private int dtime;
	private String detail;
	private String sid;
	private String gdate;
	
	public String getGdate() {
		return gdate;
	}
	public void setGdate(String gdate) {
		this.gdate = gdate;
	}
	private String brend;
	private String characters;
	

	public String getBrend() {
		return brend;
	}
	public void setBrend(String brend) {
		this.brend = brend;
	}
	public String getCharacters() {
		return characters;
	}
	public void setCharacters(String characters) {
		this.characters = characters;
	}

	
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public int getDcost() {
		return dcost;
	}
	public void setDcost(int dcost) {
		this.dcost = dcost;
	}
	public int getDtime() {
		return dtime;
	}
	public void setDtime(int dtime) {
		this.dtime = dtime;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}

}
