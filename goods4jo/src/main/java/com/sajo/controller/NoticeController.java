package com.sajo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.sajo.domain.NoticeVO;
import com.sajo.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping("/notice.sajo")
	public String notice(NoticeVO vo, Model model) {
		
		List<NoticeVO> list = service.notice(vo);
		model.addAttribute("notice", list);
		return "board/notice";
	}

}
