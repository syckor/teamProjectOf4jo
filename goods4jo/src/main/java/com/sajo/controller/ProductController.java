 package com.sajo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.GoodsVO;
import com.sajo.domain.ImageVO;
import com.sajo.service.GoodsService;
import com.sajo.service.ImageService;
import com.sajo.service.ReviewService;

@Controller
public class ProductController {
	@Autowired
	private GoodsService service;
	@Autowired
	private ImageService imgservice;
	@Autowired
	private ReviewService reservice;
	
	@RequestMapping("/products.sajo")
	public String product(Model m,String where) {
		String result="goods/products";
		if(where !=null) {
			result="main";
		}
		// 카카오 카테고리 아이템
		List<GoodsVO> kakao = service.selectKakao();
		m.addAttribute("kakao", kakao);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= kakao.size(); i++) {
			String id = kakao.get(i-1).getGid();
			ImageVO vo=imgservice.selectByGid(id);
			//이미지 파일
			ArrayList file=new ArrayList();
			if(vo.getFname1() !=null) {file.add(vo.getFname1());}
			if(vo.getFname2() !=null) {file.add(vo.getFname2());}
			if(vo.getFname3() !=null) {file.add(vo.getFname3());}
			System.out.println("1= "+vo.getFname1() + "  2= "+vo.getFname2() + "  3= "+vo.getFname3());
			
			
			m.addAttribute("k_file"+i,file);
			//src파일
			ArrayList src=new ArrayList();
			if(vo.getSource1() !=null) {src.add(vo.getSource1());}
			if(vo.getSource2() !=null) {src.add(vo.getSource2());}
			if(vo.getSource3() !=null) {src.add(vo.getSource3());}
			
			m.addAttribute("k_src"+i,src);		}

		// 라인 카테고리 아이템
		List<GoodsVO> line = service.selectLine();
		m.addAttribute("line", line);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= line.size(); i++) {
			String id = line.get(i-1).getGid();
			ImageVO vo=imgservice.selectByGid(id);
			//이미지 파일
			ArrayList file=new ArrayList();
			if(vo.getFname1() !=null) {file.add(vo.getFname1());}
			if(vo.getFname2() !=null) {file.add(vo.getFname2());}
			if(vo.getFname3() !=null) {file.add(vo.getFname3());}
			m.addAttribute("l_file"+i,file);
			//src파일
			ArrayList src=new ArrayList();
			if(vo.getSource1() !=null) {src.add(vo.getSource1());}
			if(vo.getSource2() !=null) {src.add(vo.getSource2());}
			if(vo.getSource3() !=null) {src.add(vo.getSource3());}
			m.addAttribute("l_src"+i,src);		}

		// 일반 카테고리 아이템
		List<GoodsVO> general = service.selectGeneral();
		m.addAttribute("general", general);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= general.size(); i++) {
			String id = general.get(i-1).getGid();
			ImageVO vo=imgservice.selectByGid(id);
			//이미지 파일
			ArrayList file=new ArrayList();
			if(vo.getFname1() !=null) {file.add(vo.getFname1());}
			if(vo.getFname2() !=null) {file.add(vo.getFname2());}
			if(vo.getFname3() !=null) {file.add(vo.getFname3());}
			m.addAttribute("g_file"+i,file);
			//src파일
			ArrayList src=new ArrayList();
			if(vo.getSource1() !=null) {src.add(vo.getSource1());}
			if(vo.getSource2() !=null) {src.add(vo.getSource2());}
			if(vo.getSource3() !=null) {src.add(vo.getSource3());}
			m.addAttribute("g_src"+i,src);		}
		return result;
	}
	



	// 상품등록 작성페이지로
	@RequestMapping("/gregist.sajo")
	public String gregist() {
		return "goods/gregist";
	}

	// 상품등록 페이지 작성을 db 저장 => 이미지 등록 페이지로 이동
	@RequestMapping("/insertGoods.sajo")
	public String insertGoods(GoodsVO vo, Model model) {
		// Mybatis로 판매상품 insert하기
		service.insertGoods(vo);
		// 현재 시퀀스로 gid 검색하기(브랜드+캐릭터+시퀀스)
		GoodsVO goodsvo = service.selectByGdate();
		model.addAttribute("goods", goodsvo);
		return "goods/iregist";
	}

	// 이미지 db에 저장하기 +상품상세페이지로 이동(gid parameter로 전달)
	@RequestMapping("/insertImage.sajo")
	public String insertImage(ImageVO vo) {
		imgservice.insertImage(vo);
		// gid가져오기 (최근 insert된 데이터 gid)
		GoodsVO goodsvo = service.selectByGdate();
		String gid = goodsvo.getGid();

		return "redirect:/detailGoods.sajo?gid=" + gid;
	}

	// 상품 상세페이지로 이동
	@RequestMapping("/detailGoods.sajo")
	public String detailGoods(String gid,String bno, Model model) {
		// gid로 집어넣은 이미지 정보랑 goods 정보 select해서 model로 보내기
		ImageVO imgvo = imgservice.selectByGid(gid);
		// goods정보는 최근 바로 그 정보
		GoodsVO goodsvo = service.selectByGid(gid);
		//리뷰 정보 받아오기 gid로
		
		model.addAttribute("goods", goodsvo);
		model.addAttribute("img", imgvo);
		model.addAttribute("bno", bno);
		model.addAttribute("review",reservice.selectByGid(gid));
		return "goods/gdetail";
	}
	
//	카카오페이지 보여주기 

	@RequestMapping("/kakao.sajo")
	public String selectKakao(String pNum,Model m)
	{
		String pageNum="1";
		if(pNum != null) {
			pageNum=pNum;
		}
		//kakao goods의 total페이지
		m.addAttribute("total", service.getTotalCount("k"));
		//kakao 페이지별 리스트 가져오기
		m.addAttribute("list",service.getBrendList("k",pageNum));
		return "goods/kakao";
	}
//	라인페이지 보여주기 

	@RequestMapping("/line.sajo")
	public String selectLine(String pNum,Model m)
	{
		String pageNum="1";
		if(pNum != null) {
			pageNum=pNum;
		}
		//kakao goods의 total페이지
		m.addAttribute("total", service.getTotalCount("l"));
		//kakao 페이지별 리스트 가져오기
		m.addAttribute("list",service.getBrendList("l",pageNum));
		return "goods/line";
	}
//	카카오페이지 보여주기 

	@RequestMapping("/general.sajo")
	public String selectGeneral(String pNum,Model m)
	{
		String pageNum="1";
		if(pNum != null) {
			pageNum=pNum;
		}
		//kakao goods의 total페이지
		m.addAttribute("total", service.getTotalCount("g"));
		//kakao 페이지별 리스트 가져오기
		m.addAttribute("list",service.getBrendList("g",pageNum));
		return "goods/general";
	}
}
