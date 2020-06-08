package com.sajo.dao;

import com.sajo.domain.BuyVO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository; 

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;
 
@Repository
public class BuyDAOImpl implements BuyDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	 
	@Override
	public void insertBuy() {
            
	}
	 
	public List<BuyVO> buyList(MemberVO vo) {
		System.out.println("===> BuyMapper buyList 호출");
		return mybatis.selectList("BuyDAO.buyList", vo);  
	}
   
	 

	

}
