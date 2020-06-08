package com.sajo.service;

import java.util.List;

import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;

public interface BuyService {
	public void insertBuy(); 
	public List<BuyVO> buyList(MemberVO vo); 
	
}
