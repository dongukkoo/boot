package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/sub5")
public class Controller05 {

	@RequestMapping("/link2")
	public void method2(String name, int age, double score) {
		System.out.println(name);
		System.out.println(age);
		System.out.println(score);
	}
	
	@RequestMapping("/link3")
	public void method3(String address, double height, double width) {
		System.out.println(address);
		System.out.println(height);
		System.out.println(width);
	}
	
	@RequestMapping("/link5")
	public String method5() {
		System.out.println("link5 에서 일함");
		
		return "forward:/WEB-INF/views/abc.jsp";
	}
	
}
