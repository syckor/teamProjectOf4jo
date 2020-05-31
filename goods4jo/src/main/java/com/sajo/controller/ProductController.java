package com.sajo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("/products1.sajo")
	public String product() {
		System.out.println("이겅?");
		
		return "goods/products1";
	}
}
