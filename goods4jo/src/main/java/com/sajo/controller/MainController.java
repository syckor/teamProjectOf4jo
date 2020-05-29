package com.sajo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("main.sajo")
	public String main() {
		
		return "main";
	}
}
