package com.sajo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.GoodsVO;
import com.sajo.service.GoodsService;

@Controller
public class ProductController {
	@Autowired
	private GoodsService service;
	
	@RequestMapping("/products1.sajo")
	public String product() {
		
		return "goods/products1";
	}
	
	//상품등록 작성페이지로
	@RequestMapping("/gregist.sajo")
	public String gregist() {

		return "goods/gregist";

	}
	//상품등록 페이지 작성후 확인 화면으로
	@RequestMapping("/gregistSave.sajo")
	public String gregistSave(GoodsVO vo, Model model) {
		//Mybatis로 판매상품 insert하기
		service.insertGoods(vo);
		model.addAttribute("goods", vo);
		return "goods/gregistSave";
	}
}
