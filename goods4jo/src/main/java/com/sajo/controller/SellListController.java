package com.sajo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.QnaVO;
import com.sajo.service.QnaService;
@Controller
public class SellListController {
//
//	@Autowired
//	private SellListService service;
//		
	
	@RequestMapping("sellList.sajo")
	public String sellList(String sid, Model model) {
//		List<SellListVO> list = service.sellList(sid);
//		
//		System.out.println(list);
//		
//		model.addAttribute("sellList", list);
		return "board/sellList";
		
	}
}
