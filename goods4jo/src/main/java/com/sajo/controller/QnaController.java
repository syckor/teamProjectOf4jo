package com.sajo.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.QnaVO;
import com.sajo.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/mail.sajo")
	public String getQnaList(QnaVO vo, Model model) {
		List<QnaVO> list = qnaService.getQnaList(vo);
		System.out.println(list);
		model.addAttribute("qnaList", list);
		return "board/mail";
	}
		
	@RequestMapping("/{step}.sajo")
	public String insertQna(@PathVariable String step){
		return step;
	} 
	@RequestMapping("/saveQna.sajo")
	public String saveQna(QnaVO vo) {
		qnaService.insertQna(vo);
		
		return "redirect:/mail.sajo";
	}

}
