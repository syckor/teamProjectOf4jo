package com.sajo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AboutController {

	
	@RequestMapping("about.sajo")
	public String about() {
		
		return "about";
	}
}

