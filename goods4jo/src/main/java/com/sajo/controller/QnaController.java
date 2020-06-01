package com.sajo.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.QnaVO;
import com.sajo.service.QnaService;

@Controller
@RequestMapping("board")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/mail.sajo")
	public String mail() {
		
		return "/board/mail";
	}
	
	
	@RequestMapping("qna.sajo")
	public String insertQna(QnaVO vo) throws IOException{
		int result=qnaService.insertQna(vo);
		System.out.println("===================================================================================");
		return "/board/qna";
	} 

}
