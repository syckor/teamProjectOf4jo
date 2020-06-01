package com.sajo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("/products1.sajo")
	public String product() {
		
		return "goods/products1";
	}
	
	@RequestMapping("/gregist.sajo")
	public String gregist() {

		return "goods/gregist";
	}
}
