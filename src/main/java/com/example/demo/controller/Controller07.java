package com.example.demo.controller;

import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;

import jakarta.servlet.http.*;

@Controller
@RequestMapping("sub7")
public class Controller07 {

	@RequestMapping("link1")
	public void method1(HttpServletRequest req) {
		req.setAttribute("myName", "서태웅");
		
	}
	
	@RequestMapping("link2")
	public String method2(Model model) {
		
		// 3. add attribute
		model.addAttribute("myName", "채치수");
		
		// 4. forward / redirect
		return "/sub7/link1";
	}
	
	@RequestMapping("link3")
	public void method3(Model model) {
		model.addAttribute("address", "독도");
		
	}
	
	@RequestMapping("link4")
	public void method4(Model model) {
		model.addAttribute("list", List.of("java", "spring"));
		
	}
	
	@RequestMapping("link5")
	public void method5(Model model) {
		model.addAttribute("myMap", Map.of("address", "seoul", "age", "22", "email", "google@naver.com"));
		
	}
	
	@RequestMapping("link6")
	public void method6(Model model) {
		model.addAttribute("name", "이한나");
		model.addAttribute("job", "매니저");
		model.addAttribute("hobby", List.of("영화", "독서", "TV"));
		
		
	}
	
	@RequestMapping("link7")
	public void method7(Model model) {
		model.addAttribute("age", "33");
		model.addAttribute("country", "USA");
		model.addAttribute("movieList", List.of("avatar", "slamdunk", "the glory"));
	}
	
	@RequestMapping("link8")
	public void method8(Model model) {
		Dto01 o1 = new Dto01();
		o1.setName("박지성");
		o1.setAge(40);
		
		model.addAttribute("player", o1);
		
	}
	
	@RequestMapping("link9")
	public void method9(Model model) {
		Dto02 o2 = new Dto02();
		o2.setCompany("dell");
		o2.setModel("notebook");
		o2.setPrice(2000);
		
		model.addAttribute("value", o2);
	}
	
	@RequestMapping("link10")
	public void method10(Model model) {
		Dto04 obj = new Dto04();
		obj.setName("송태섭");
		obj.setAge(20);
		
		model.addAttribute("val", obj);
		
	}
}














