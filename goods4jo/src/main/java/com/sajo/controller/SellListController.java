package com.sajo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.SellListVO;
import com.sajo.domain.SellerVO;
import com.sajo.service.SellListService;

@Controller
public class SellListController {

	@Autowired
	private SellListService service;

	
	
	@RequestMapping("sellList.sajo")
	public String getSellList(HttpSession session, Model model) {
		
		SellerVO vo=(SellerVO)session.getAttribute("seller");
		String sellerid=String.valueOf(vo.getSid());
		model.addAttribute("List", service.getSellList(sellerid));
		return "board/sellList";
		
	}
}
