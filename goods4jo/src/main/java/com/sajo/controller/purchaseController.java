package com.sajo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sajo.domain.BuyListVO;
import com.sajo.domain.BuyVO;
import com.sajo.domain.MemberVO;
import com.sajo.service.BuyService;
@Controller
public class purchaseController {
   
   @Autowired
   private BuyService service;
 

   @RequestMapping("/prodshoppingList2.sajo")
   public String prodshoppingList2() {
      
       return "sell/prodshoppingList2";  
      
   }
   
//   로그인이 되었으면 구매페이지로 
   @RequestMapping( "/purchase.sajo")
public String purchase(MemberVO vo,HttpSession session,BuyListVO buy,Model m) {
	   	m.addAttribute("list", buy.getList());
return "sell/purchase"; 
};  

@RequestMapping("/Payment.sajo")
public String payment() {
   
    return "sell/Payment";  
   
}

/* 
 * 
 * 구매 완료시 구매테이블에 데이터 추가
 * */
@RequestMapping("/completeBuying.sajo")
public String buyingComplete(BuyListVO list, Model model, HttpServletRequest request) {
	ArrayList<BuyVO> listvo=list.getList();
	BuyVO test = listvo.get(0);
	String referrer = request.getHeader("Referer");
    request.getSession().setAttribute("prevPage", referrer);


	for(int i=0;i<listvo.size();i++) {
		BuyVO imsi =listvo.get(i);
		imsi.setGid(imsi.getGid().trim());
		imsi.setPay(list.getPay());
		imsi.setMid(list.getMid());
		String count = (String)service.checkGoodsCount(imsi);
		System.out.println(count+"=======================체크카운트==========================================");
		int goodscount=Integer.parseInt(count);
		if((goodscount-Integer.parseInt(imsi.getBcount())<=0)){
			model.addAttribute("soldout", "soldout");
			return "sell/purchase";     
		}else {   
			service.buyingComplete(imsi);			 
		}		 
	} 
	return "main";   
	
}

/*
 * 
 * 구매목록 불러오는 메쏘드
 * */
@RequestMapping("/buylist.sajo")
public String buylist(Model model, HttpSession session,
		@RequestParam(value = "pageno") int pageno) {
	MemberVO vo = (MemberVO)session.getAttribute("member");
	String mid = vo.getMid();
	int startlist = pageno*10-9; 
	int lastlist = startlist+9;  
	BuyVO bvo = new BuyVO();
	bvo.setStartlist(startlist); 
	bvo.setLastlist(lastlist);
	bvo.setMid(mid);    
	List<BuyVO> list = service.buyList(bvo);
	List<BuyVO> listforpage = service.buyListforPage(bvo);
	int amountoflist = listforpage.size();
	int amountofpage = amountoflist/10+1;
	  
	model.addAttribute("gid",bvo.getGid());
	model.addAttribute("amountoflist", amountoflist); 
	model.addAttribute("amountofpage", amountofpage); 
	model.addAttribute("buyList", list);  
    return "sell/buylist";   
	
}


   
};
