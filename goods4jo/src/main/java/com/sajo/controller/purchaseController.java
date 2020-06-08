package com.sajo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
//	로그인이 되었으면 구매페이지로 
	@RequestMapping( "/purchase.sajo")
public String Purchase(MemberVO vo,HttpSession session) {
	MemberVO result = (MemberVO)session.getAttribute("member");
               
	
	if(result==null) {
	return "sell/purchase";
	}else{
		return"sell/purchase";
	}

};

@RequestMapping("/Payment.sajo")
public String Payment() {
	
    return "sell/Payment";  
	
}

@RequestMapping("/buylist.sajo")
public String buylist(Model model, HttpSession session,
		@RequestParam(value = "pageno") int pageno) {
	MemberVO vo = (MemberVO)session.getAttribute("member");
	String mid = vo.getMid();
	int startlist = pageno*10-9;
	int lastlist = startlist+10; 
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

