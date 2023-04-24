package com.example.demo.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.mapper.*;

@Controller
@RequestMapping("sub22")
public class Controller22 {

	@Autowired
	private Mapper03 mapper;
	
	@RequestMapping("link1")
	public void method1() {
		int cnt1 = mapper.sql1(77, "java");
		int cnt2 = mapper.sql1(88, "spring");
		int cnt3 = mapper.sql1(99, "css");
		
		System.out.println(cnt1);
		System.out.println(cnt2);
		System.out.println(cnt3);
	}
	
	@RequestMapping("link2")
	public void method2() {
		int cnt1 = mapper.sql2(10.992, "강백호");
		int cnt2 = mapper.sql2(189.73, "서태웅");
		int cnt3 = mapper.sql2(197.2, "야오밍");
		
		System.out.println(cnt1);
		System.out.println(cnt2);
		System.out.println(cnt3);
	}
	
	@RequestMapping("link3")
	public void method3(Double val1, String val2) {
		System.out.println(mapper.sql2(val1, val2));
	}
	
	@RequestMapping("link4")
	public void method4() {
		Dto09 dto = new Dto09();
		dto.setProp1(300);
		dto.setProp2("hello mybatis");
		dto.setProp3(33.33);
		
		int cnt = mapper.sql3(dto);
		System.out.println(cnt);
	}
	
	@RequestMapping("link5")
	public void method5() {
		Dto10 dto = new Dto10();
		dto.setAge(31);
		dto.setName("손흥민");
		dto.setScore(100.2);
		
		int cnt = mapper.sql4(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	@RequestMapping("link6")
	public void method6(@ModelAttribute Dto10 dto) {
		int cnt = mapper.sql4(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	@RequestMapping("link7")
	public void method7(@ModelAttribute Dto09 dto) {
		int cnt = mapper.sql3(dto);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	@RequestMapping("link8")
	public void method8() {
		Dto09 dto1 = new Dto09();
		Dto10 dto2 = new Dto10();
		
		dto1.setProp1(345);
		dto2.setName("서태웅");
		dto1.setProp3(392.32);
		int cnt = mapper.sql5(dto1, dto2);
		System.out.println(cnt + "개 행 입력됨");
	}
	
	@RequestMapping("link9")
	public void method9() {
		Dto09 dto1 = new Dto09();
		Dto10 dto2 = new Dto10();
		
		dto1.setProp1(90);
		dto2.setAge(35);
		dto1.setProp2("토트넘");
		dto2.setName("맨유");
		dto1.setProp3(48.518);
		dto2.setScore(10.4);
		
		int cnt = mapper.sql6(dto1, dto2);
		System.out.println(cnt + "개 행 입력됨");
		

	}
	
	@RequestMapping("link10")
	public void method10(Dto09 p1, Dto10 p2) {
		int cnt = mapper.sql6(p1, p2);
		System.out.println(cnt + "행 입력!");
	}
	
	@RequestMapping("link11")
	public void method11(Dto11 dto) {
		System.out.println("prop1: " + dto.getProp1());
		int cnt = mapper.sql7(dto);
		System.out.println(cnt + "행 입력 완료!!!");
		System.out.println("prop1: " + dto.getProp1());
	}
	
	@RequestMapping("link12")
	public void method12(Dto12 dto) {
		int cnt = mapper.sql8(dto);
		System.out.println(cnt + "행 입력 완료!");
		
		System.out.println(dto.getCount() + "번째 데이터 입력완료");
	}
}

















