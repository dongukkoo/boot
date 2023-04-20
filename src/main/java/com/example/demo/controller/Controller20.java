package com.example.demo.controller;

import java.time.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub20")
public class Controller20 {

	@Autowired
	private Mapper01 mapper;
	
	@RequestMapping("link1")
	public void method1() {
		String name = mapper.method1();
		System.out.println(name);
		
		System.out.println(mapper.method2());
		
		System.out.println(mapper.method3());
		
		
	}
	@RequestMapping("link3")
	public void method3() {
		String name = mapper.method4(5);
		System.out.println(name);
	}
	
	@RequestMapping("link4")
	public void method4(
			@RequestParam("id") Integer customerID
			) {
		String name = mapper.method4(customerID);
		System.out.println(name);
	}
	
	@RequestMapping("link5")
	public void method5( Integer lastName) {
		String name = mapper.method5(lastName);
		System.out.println(name);
	}
	
	@RequestMapping("link6")
	public void method6() {
		Integer price = mapper.method6();
		System.out.println(price);
	}
	
	@RequestMapping("link7")
	public void method7() {
		Double weight = mapper.method7();
		System.out.println(weight);
	}
	
	@RequestMapping("link8")
	public void method8() {
		LocalDate published = mapper.method8();
		System.out.println(published);
	}
	
	@RequestMapping("link9")
	public void method9() {
		LocalDateTime updated = mapper.method9();
		System.out.println(updated);
	}
	
	@RequestMapping("link10")
	public void method10() {
		Dto06 res = mapper.method10();
		System.out.println(res);
	}
	
	@RequestMapping("link11")
	public void method11() {
		Dto05 res = mapper.method11();
		System.out.println(res);
	}
	
	@RequestMapping("link12")
	public void method12() {
		Supplier res = mapper.method12();
		System.out.println(res);
	}
	
	@RequestMapping("link13")
	public void method13() {
		Supplier sup = mapper.method13();
		System.out.println(sup);
	}
	
	@RequestMapping("link14")
	public void method14() {
		Employee emp = mapper.method14();
		System.out.println(emp);
	}
}















