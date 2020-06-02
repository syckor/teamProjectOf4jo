package com.sajo.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.QnaVO;
import com.sajo.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/mail.sajo")
	public String mail() {
		System.out.println("#######################");
		return "board/mail";
	}
	
	
	@RequestMapping("/qna.sajo")
	public String insertQna(QnaVO vo, HttpSession session){
		System.out.println(" insert ==================================================================================="+vo.getQno());
		String mid = (String)session.getAttribute("memberId");
		vo.setMid(mid);
		
		qnaService.insertQna(vo);
		return "board/mail";
	} 

}
