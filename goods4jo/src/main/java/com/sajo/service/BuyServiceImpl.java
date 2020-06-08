package com.sajo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.BuyDAOImpl;
import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;



@Service("buyService") 
public class BuyServiceImpl implements BuyService{
	
	@Autowired
	private BuyDAOImpl buyDAO;
 
	@Override
	public void insertBuy() { 
		buyDAO.insertBuy();

		  
		  
	}  
	public List<BuyVO> buyList(BuyVO bvo) {
		System.out.println("buyList service 호출");
		return buyDAO.buyList(bvo);  
		  
	}
	public List<BuyVO> buyListforPage(BuyVO bvo){
		System.out.println("buyList service 호출");
		return buyDAO.buyListforPage(bvo); 
	}

	
	

}
