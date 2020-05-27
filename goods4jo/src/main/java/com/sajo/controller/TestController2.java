package com.sajo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.testVO;
import com.sajo.service.testService;

@Controller
public class TestController2 {
	@Autowired
	private testService service;
	
	@RequestMapping("login.do")
	public String insertTest(testVO vo,Model m) {
	testVO result =service.selectLogin(vo);
	m.addAttribute("test", result);
	 if ( result.getId() == null || result.getId().equals("") ) return "main";
	return "confirmLogin";
	}
}
