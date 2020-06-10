package com.sajo.domain;

import java.util.ArrayList;

public class BuyListVO {

ArrayList<BuyVO> list;

private String pay;
private String mid;

public String getMid() {
	return mid;
}

public void setMid(String mid) {
	this.mid = mid;
}

public String getPay() {
	return pay;
}

public void setPay(String pay) {
	this.pay = pay;
}

public ArrayList<BuyVO> getList() {
	return list;
}

public void setList(ArrayList<BuyVO> list) {
	this.list = list;
}
}
