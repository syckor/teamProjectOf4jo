package com.sajo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

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
	public String product(Model m, String where) {
		String result = "goods/products";
		if (where != null) {
			result = "main";
		}
		// 카카오 카테고리 아이템
		List<GoodsVO> kakao = service.selectKakao();
		m.addAttribute("kakao", kakao);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= kakao.size(); i++) {
			String id = kakao.get(i - 1).getGid();
			ImageVO vo = imgservice.selectByGid(id);
			// 이미지 파일
			ArrayList file = new ArrayList();
			if (vo.getFname1() != null) {
				file.add(vo.getFname1());
			}
			if (vo.getFname2() != null) {
				file.add(vo.getFname2());
			}
			if (vo.getFname3() != null) {
				file.add(vo.getFname3());
			}
			System.out.println("1= " + vo.getFname1() + "  2= " + vo.getFname2() + "  3= " + vo.getFname3());

			m.addAttribute("k_file" + i, file);
			// src파일
			ArrayList src = new ArrayList();
			if (vo.getSource1() != null) {
				src.add(vo.getSource1());
			}
			if (vo.getSource2() != null) {
				src.add(vo.getSource2());
			}
			if (vo.getSource3() != null) {
				src.add(vo.getSource3());
			}

			m.addAttribute("k_src" + i, src);
		}

		// 라인 카테고리 아이템
		List<GoodsVO> line = service.selectLine();
		m.addAttribute("line", line);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= line.size(); i++) {
			String id = line.get(i - 1).getGid();
			ImageVO vo = imgservice.selectByGid(id);
			// 이미지 파일
			ArrayList file = new ArrayList();
			if (vo.getFname1() != null) {
				file.add(vo.getFname1());
			}
			if (vo.getFname2() != null) {
				file.add(vo.getFname2());
			}
			if (vo.getFname3() != null) {
				file.add(vo.getFname3());
			}
			m.addAttribute("l_file" + i, file);
			// src파일
			ArrayList src = new ArrayList();
			if (vo.getSource1() != null) {
				src.add(vo.getSource1());
			}
			if (vo.getSource2() != null) {
				src.add(vo.getSource2());
			}
			if (vo.getSource3() != null) {
				src.add(vo.getSource3());
			}
			m.addAttribute("l_src" + i, src);
		}

		// 일반 카테고리 아이템
		List<GoodsVO> general = service.selectGeneral();
		m.addAttribute("general", general);
		// 위에서 가져온 goods 아이디에 맞는 img
		for (int i = 1; i <= general.size(); i++) {
			String id = general.get(i - 1).getGid();
			ImageVO vo = imgservice.selectByGid(id);
			// 이미지 파일
			ArrayList file = new ArrayList();
			if (vo.getFname1() != null) {
				file.add(vo.getFname1());
			}
			if (vo.getFname2() != null) {
				file.add(vo.getFname2());
			}
			if (vo.getFname3() != null) {
				file.add(vo.getFname3());
			}
			m.addAttribute("g_file" + i, file);
			// src파일
			ArrayList src = new ArrayList();
			if (vo.getSource1() != null) {
				src.add(vo.getSource1());
			}
			if (vo.getSource2() != null) {
				src.add(vo.getSource2());
			}
			if (vo.getSource3() != null) {
				src.add(vo.getSource3());
			}
			m.addAttribute("g_src" + i, src);
		}
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
	public String detailGoods(String gid, String bno,String pNum ,Model model) {
//		리뷰 페이지 처리 
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		//구매 한번 당 리뷰 한 번 처리
		int bnocnt=0;//select 해서 bno의 리뷰 수 
		if(bno !=null)
		{bnocnt=reservice.getBnoReviewCnt(Integer.parseInt(bno));}
		String Bno=bno;
		if(bnocnt >0) {
			System.out.println("이거 출력되면 bno로 리뷰 작성한적 있다는 건데 ..........--------------------------------------------------");
			Bno=null;
		}
		// gid로 집어넣은 이미지 정보랑 goods 정보 select해서 model로 보내기
		ImageVO imgvo = imgservice.selectByGid(gid);
		// goods정보는 최근 바로 그 정보
		GoodsVO goodsvo = service.selectByGid(gid);
		// 옵션 가져와서 select에 입력할 수있도록 작성하기
		ArrayList option1 = new ArrayList();
		option1.add("옵션1을 선택해 주세요.");
		if (goodsvo.getOption1() != null) {
			StringTokenizer st = new StringTokenizer(goodsvo.getOption1(), "/");
			while (st.hasMoreTokens()) {
				String temp = st.nextToken();
				option1.add(temp);
			}
		}
		// 옵션 2가져와 서 저장
		ArrayList option2 = new ArrayList();
		option2.add("옵션2을 선택해 주세요.");
		if (goodsvo.getOption2() != null) {
			StringTokenizer st2 = new StringTokenizer(goodsvo.getOption2(), "/");
			while (st2.hasMoreTokens()) {
				String temp = st2.nextToken();
				option2.add(temp);
			}
		}
		model.addAttribute("option1", option1);
		model.addAttribute("option2", option2);
		model.addAttribute("goods", goodsvo);
		model.addAttribute("img", imgvo);
		model.addAttribute("bno", Bno);
		// 리뷰 정보 받아오기 gid로 페이지 처리합니다.
		model.addAttribute("review", reservice.selectByGid(gid,pageNum));
		// 리뷰의의 total페이지
		model.addAttribute("total", reservice.getTotalCount(gid));
		// 리뷰 갯수 
		model.addAttribute("reCount",reservice.getReviewCount(gid));
		//현재  페이지 그대로 넘기기
		model.addAttribute("pNum",pageNum);
		return "goods/gdetail";
	}
	
//	카카오페이지 보여주기 
	@RequestMapping("/kakao.sajo")
	public String selectKakao(String pNum,String orderby, Model m) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		// kakao goods의 total페이지
		m.addAttribute("total", service.getTotalCount("k"));
		// kakao 페이지별 리스트 가져오기
		m.addAttribute("list", service.getBrendList("k", pageNum,orderby));
		//현재  페이지 그대로 넘기기
		m.addAttribute("pNum",pageNum);
		//현재 정렬 상태그대로 넘기기
		m.addAttribute("orderby",orderby);
		return "goods/kakao";
	}
//	라인페이지 보여주기 

	@RequestMapping("/line.sajo")
	public String selectLine(String pNum,String orderby, Model m) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		// kakao goods의 total페이지
		m.addAttribute("total", service.getTotalCount("l"));
		// kakao 페이지별 리스트 가져오기
		m.addAttribute("list", service.getBrendList("l", pageNum,orderby));
		//현재  페이지 그대로 넘기기
				m.addAttribute("pNum",pNum);
				//현재 정렬 상태그대로 넘기기
				m.addAttribute("orderby",orderby);
		return "goods/line";
	}
//	카카오페이지 보여주기 

	@RequestMapping("/general.sajo")
	public String selectGeneral(String pNum,String orderby, Model m) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		// general goods의 total페이지
		m.addAttribute("total", service.getTotalCount("g"));
		// kakgeneralao 페이지별 리스트 가져오기
		m.addAttribute("list", service.getBrendList("g", pageNum,orderby));
		//현재  페이지 그대로 넘기기
		m.addAttribute("pNum",pNum);
				//현재 정렬 상태그대로 넘기기
		m.addAttribute("orderby",orderby);
		return "goods/general";
	}

	// 검색 기능
	@RequestMapping("search.sajo")
	public String searchGoods(String keyword, String pNum, Model m) {
		String pageNum = "1";
		if (pNum != null) {
			pageNum = pNum;
		}
		// search goods의 total페이지
		m.addAttribute("total", service.getSearchTotal(keyword));
		// seearch goods 페이지별 리스트 가져오기
		m.addAttribute("list", service.getSearchList(keyword, pageNum));
		// 키워드 인자로 넘기기
		m.addAttribute("keyword", keyword);
		return "goods/search";
	}
}
