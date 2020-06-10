package com.sajo.dao;

import java.util.List;

import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;

public interface BuyDAO {
   public void insertBuy();
   public List<BuyVO> buyList(MemberVO vo);
  public int searchDfee(String gname);
  public List<BuyVO> buyList(BuyVO bvo);
  public List<BuyVO> buyListforPage(BuyVO bvo);
  public int buyingComplete(BuyVO bvo); 
  public String checkGoodsCount(BuyVO bvo); 
         
} 