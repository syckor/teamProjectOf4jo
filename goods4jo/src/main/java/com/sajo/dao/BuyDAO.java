package com.sajo.dao;

import java.util.List;

import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;

public interface BuyDAO {
   public void insertBuy();
   public List<BuyVO> buyList(MemberVO vo);
 
         
}
