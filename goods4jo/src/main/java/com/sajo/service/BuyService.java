package com.sajo.service;

import java.util.List;

import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;

public interface BuyService { 
   public void insertBuy(); 
   public List<BuyVO> buyList(BuyVO bvo); 
   public int searchDfee(String gname); 
   public List<BuyVO> buyListforPage(BuyVO bvo);
   public int buyingComplete(BuyVO bvo);
   public String checkGoodsCount(BuyVO bvo);

} 
 
