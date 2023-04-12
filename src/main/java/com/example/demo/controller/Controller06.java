package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/sub6")
public class Controller06 {

	@RequestMapping("/link1")
	public String method1() {
		System.out.println("link1 메소드 일함");
		
		return "forward:/sub6/link2";
	}
	
	@RequestMapping("/link2")
	public void method2() {
		System.out.println("link2 메소드 일함");
	}
	
	
	@RequestMapping("/link3")
	public String method3() {
		System.out.println("link3 메소드 일함");
		
		return "forward:/sub6/link2";
	}
	
	@RequestMapping("/link6")
	public String method6() {
		System.out.println("link6 에서 일함");
		return "abc";
	}
	
	@RequestMapping("/link7")
	public String method7() {
		System.out.println("link7 에서 일함");
		
		return "def";
	}
	
	@RequestMapping("/link8")
	public String method8() {
		System.out.println("8번 베소드 일함");
		
		return "/sub6/link8";
	}
	
	@RequestMapping("/link9")
	public void method9() {
		System.out.println("9번 베소드 일함");
		
		
}
	
	@RequestMapping("/link10")
	public String method10() {
		System.out.println("link10 메소드 일함");
		
		return null;
	}
	
	@RequestMapping("/link11")
	public String method11() {
		System.out.println("link11 메소드 일함");
		
		return null;
	}
}
















