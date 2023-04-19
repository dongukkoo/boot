package com.example.demo.controller;

import java.sql.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("sub18")
public class Controller18 {

	@Value("${spring.datasource.url}")
	private String url;
	@Value("${spring.datasource.username}")
	private String username;
	@Value("${spring.datasource.password}")
	private String password;
	
	@RequestMapping("link1")
	public void method1() throws Exception{
		String sql1 = """
				UPDATE Bank SET money = money - 5000
				WHERE customerName = 'A'
				""";
		
		String sql2 = """
				UPDATE Bank SET money = money + 5000
				WHERE customerName = 'B'
				""";
		try(
		Connection con = DriverManager.getConnection(url, username, password);
		Statement stmt1 = con.createStatement();
		Statement stmt2 = con.createStatement();){
		
		stmt1.executeUpdate(sql1);
		stmt2.executeUpdate(sql2);
		
		System.out.println("이체 완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	@RequestMapping("link2")
	public void method2() throws Exception{
		String sql1 = """
				UPDATE Bank SET money = money - 5000
				WHERE customerName = 'A'
				""";
		
		String sql2 = """
				UPDATE Bank SET money = money + 5000
				WHERE customerName = 'B'
				""";
		try(
		Connection con = DriverManager.getConnection(url, username, password);
		Statement stmt1 = con.createStatement();
		Statement stmt2 = con.createStatement();){
		
		stmt1.executeUpdate(sql1);
		
		int a = 3 / 0;
		
		stmt2.executeUpdate(sql2);
		
		System.out.println("이체 완료");
		} catch (Exception e) {
			System.out.println("이체 실패");
			e.printStackTrace();
		}
		
		
	}
	
	@RequestMapping("link3")
	public void method3() throws Exception{
		String sql1 = """
				UPDATE Bank SET money = money - 5000
				WHERE customerName = 'A'
				""";
		
		String sql2 = """
				UPDATE Bank SET money = money + 5000
				WHERE customerName = 'B'
				""";
		try(
		Connection con = DriverManager.getConnection(url, username, password);
		Statement stmt1 = con.createStatement();
		Statement stmt2 = con.createStatement();){
		
		con.setAutoCommit(false);	
			
		stmt1.executeUpdate(sql1);
		stmt2.executeUpdate(sql2);
		
		con.setAutoCommit(true);
		
		
		System.out.println("이체 완료");
		} catch (Exception e) {
			System.out.println("이체 실패");
			e.printStackTrace();
		}
		
		
	}
	
	@RequestMapping("link4")
	public void method4() throws Exception{
		String sql1 = """
				UPDATE Bank SET money = money - 5000
				WHERE customerName = 'A'
				""";
		
		String sql2 = """
				UPDATE Bank SET money = money + 5000
				WHERE customerName = 'B'
				""";
		
		Connection con = DriverManager.getConnection(url, username, password);
		try( con;
		Statement stmt1 = con.createStatement();
		Statement stmt2 = con.createStatement();){
		
		con.setAutoCommit(false);	
			
		stmt1.executeUpdate(sql1);
		
		int a = 3 / 0;
		
		stmt2.executeUpdate(sql2);
		
		con.commit();
		
		
		
		
		System.out.println("이체 완료");
		} catch (Exception e) {
			System.out.println("이체 실패");
			con.rollback();
			e.printStackTrace();
		}
		
		
	}
	
	
}











