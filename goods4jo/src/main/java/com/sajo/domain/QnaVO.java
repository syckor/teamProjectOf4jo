package com.sajo.domain;
//Qna(Qna table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class QnaVO {
	int qno;
	String qtype;
	String qtitle;
	int qpassword;
	String qcontent;
	String qanswer;
	String mid;
	
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public int getPassword() {
		return qpassword;
	}
	public void setPassword(int qpassword) {
		this.qpassword = qpassword;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQanswer() {
		return qanswer;
	}
	public void setQanswer(String qanswer) {
		this.qanswer = qanswer;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
}
