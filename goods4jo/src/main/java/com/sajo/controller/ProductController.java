package com.sajo.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.GoodsVO;
import com.sajo.domain.ImageVO;
import com.sajo.service.GoodsService;
import com.sajo.service.ImageService;

@Controller
public class ProductController {
	@Autowired
	private GoodsService service;
	@Autowired
	private ImageService imgservice;
	
	@RequestMapping("/products1.sajo")
	public String product() {
		
		return "goods/products1";
	}
	
	//상품등록 작성페이지로
	@RequestMapping("/gregist.sajo")
	public String gregist() {

		
		return "goods/gregist";

	}
	//상품등록 페이지 작성을 db 저장 => 이미지 등록 페이지로 이동
	@RequestMapping("/insertGoods.sajo")
	public String insertGoods(GoodsVO vo, Model model) {
		//Mybatis로 판매상품 insert하기
		service.insertGoods(vo);
		//현재 시퀀스로 gid 검색하기(브랜드+캐릭터+시퀀스)
		GoodsVO goodsvo=service.selectByGdate();
		model.addAttribute("goods", goodsvo);
		return "goods/iregist";
	}
	
	//이미지 db에 저장하기 +상품상세페이지로 이동(gid parameter로 전달)
	@RequestMapping("/insertImage.sajo")
	public String insertImage(ImageVO vo) {
		imgservice.insertImage(vo);
		//gid가져오기 (최근 insert된 데이터 gid)
		GoodsVO goodsvo=service.selectByGdate();
		String gid =goodsvo.getGid();
		
		return "redirect:/detailGoods.sajo?gid="+gid;
	}
	
	//상품 상세페이지로 이동
	@RequestMapping("/detailGoods.sajo")
	public String detailGoods(String gid,Model model) {
		//gid로 집어넣은 이미지 정보랑 goods 정보 select해서 model로 보내기
		ImageVO imgvo=imgservice.selectByGid(gid);
		//goods정보는 최근 바로 그 정보
		GoodsVO goodsvo=service.selectByGid(gid);
		
		model.addAttribute("goods",goodsvo);
		model.addAttribute("img",imgvo);
		
		
		return "goods/gdetail";
	}
}
