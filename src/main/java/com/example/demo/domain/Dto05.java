package com.example.demo.domain;

import java.sql.*;
import java.time.*;

import org.springframework.cglib.core.*;

import lombok.*;

@Data
public class Dto05 {
	private String name;
	private Integer age;
	private Double price;
	private LocalDate birth;
	private LocalDateTime inserted;
	
	
//	Name, Age, Price, Birth, Inserted
}
