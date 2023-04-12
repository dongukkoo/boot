package com.example.demo.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

import ch.qos.logback.core.model.*;

@Controller
@RequestMapping("sub8")
public class Controller08 {

	@RequestMapping("link1")
	public String method1(@ModelAttribute("val") Dto04 dto04 ) {
		dto04.setName("채소연");
		dto04.setAge(22);
		
		return "/sub7/link10";
	}
	
	@RequestMapping("link2")
	public String method2(@ModelAttribute("product") Dto02 obj) {
		obj.setCompany("apple");
		obj.setModel("ipad");
		obj.setPrice(300);
		
		return "/sub7/link2";
		
		
	}
	
	@RequestMapping("link3")
	public void method3(Model model) {
		Dto02 dto02 = new Dto02();
		Dto03 dto03 = new Dto03();
		
		
	}
	
	@RequestMapping("link4")
	public void method4(@ModelAttribute("product") Dto02 dto02, @ModelAttribute("member") Dto03 dto03) {
		
	}
	
	@RequestMapping("link5")
	public String method5(@ModelAttribute("dto02") Dto02 dto02, @ModelAttribute("dto03") Dto03 dto03) {
		dto02.setCompany("microsoft");
		dto03.setName("bill gates");
		
		return "/sub8/link5";
	}
}


















