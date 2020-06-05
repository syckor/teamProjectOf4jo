package com.sajo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.ReviewVO;
import com.sajo.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/insertReview.sajo")
	public String insertReview(ReviewVO vo) {
		
		reviewService.insertReview(vo);
		
		return "redirect:/detailGoods.sajo?gid="+vo.getGid();
	}
	
}
