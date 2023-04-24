package com.example.demo.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub24")
public class Controller24 {

	@Autowired
	private Mapper05 mapper;
	
	@RequestMapping("link1")
	public void method1() {
		int cnt = mapper.sql1();
		System.out.println(cnt + "개 행 수정됨!!");
	}
	
	@RequestMapping("link2")
	public void method2(Integer key, String val1, Integer val2) {
		int cnt = mapper.sql2("마이바티스", 2, 4);
		System.out.println(cnt + "개 행 수정됨!");
	}
	
	@RequestMapping("link3")
	public void method3(String name, String country) {
		int cnt = mapper.sql3("mike trout", "USA");
		System.out.println(cnt + "개 행 수정됨");
	}
	
	@RequestMapping("link4")
	public void method4(Customer customer) {
		int cnt = mapper.sql4(customer);
		System.out.println(cnt + "개 행 수정됨");
	}
	
	@RequestMapping("link5")
	public void method5(Integer id, Model model) {
		Customer customer = mapper.sql5(id);
		model.addAttribute("customer", customer);
		
	}
	
	@RequestMapping("link6")
	public void method6(Integer id, Model model) {
		Employee employee = mapper.sql6(id);
		model.addAttribute("employee", employee);
		
	}
	
	@RequestMapping("link7")
	public void method7(Employee employee) {
		int cnt = mapper.sql7(employee);
		System.out.println(cnt + "개 변경됨!!!");
	}
	
	
}













