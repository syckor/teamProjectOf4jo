package com.sajo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;
 
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
   public  int searchDfee(String gname) {
	   System.out.println("===> BuyMapper buyList 호출");
	      return mybatis.selectOne("BuyDAO.searchDfee ",gname);  
   }

	public List<BuyVO> buyListforPage(BuyVO bvo){
		System.out.println("===> BuyMapper buyList 호출"); 
		return mybatis.selectList("BuyDAO.buyListforPage", bvo); 
	}
	public List<BuyVO> buyList(BuyVO bvo) {
		System.out.println("===> BuyMapper buyList 호출");
		return mybatis.selectList("BuyDAO.buyList", bvo);   
	}
	public int buyingComplete(BuyVO bvo) {
		System.out.println("===> BuyMapper buyingComplete 호출");
		mybatis.update("BuyDAO.updateComplete", bvo.getGid());
		return mybatis.insert("BuyDAO.buyingComplete", bvo);      
	}
	 public String checkGoodsCount(BuyVO bvo){
		 System.out.println("===> BuyMapper buyList 호출");
		return mybatis.selectOne("BuyDAO.checkGoodsCount", bvo);    
		    
	 }

}