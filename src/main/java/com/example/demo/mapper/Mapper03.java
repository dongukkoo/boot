package com.example.demo.mapper;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper03 {

	@Insert("""
			INSERT INTO MyTable34 (Col1, Col2)
			VALUES (#{val1}, #{val2})
			""")
	int sql1(Integer val1, String val2);
	
	@Insert("""
			INSERT INTO MyTable35 (Col1, Col2)
			VALUES (#{v1}, #{v2})
			""")
	int sql2(Double v1, String v2);
	
	@Insert("""
			INSERT INTO MyTable36 (Col1, Col2, Col3)
			VALUES ( #{prop1}, #{prop2}, #{prop3})
			""")
	int sql3(Dto09 dto);
	
	@Insert("""
			INSERT INTO MyTable37 (Age, Name, Score)
			VALUES ( #{age}, #{name}, #{score})
			""")
	int sql4(Dto10 dto);

	@Insert("""
			INSERT INTO MyTable37 (Age, Name, Score)
			VALUES (#{dto09.prop1}, #{dto10.name}, #{dto09.prop3})
			""")
	int sql5(Dto09 dto09, Dto10 dto10);
	
	@Insert("""
			INSERT INTO MyTable38 (Col1, Col2, Col3, Col4, Col5, Col6)
			VALUES ( #{dto1.prop1}, #{dto2.age}, #{dto1.prop2}, #{dto2.name}, #{dto1.prop3}, #{dto2.score})
			""")
	int sql6(Dto09 dto1, Dto10 dto2);
	
	@Insert("""
			INSERT INTO MyTable39 (Col2, Col3)
			VALUES (#{prop2}, #{prop3})
			""")
	@Options(useGeneratedKeys = true, keyProperty = "prop1")
	int sql7(Dto11 dto);
	
	@Insert("""
			INSERT INTO MyTable40 (Id, Age, Name, Score)
			VALUES (#{id}, #{age}, #{name}, #{score})
			""")
	@Options(useGeneratedKeys = true, keyProperty = "count")
	int sql8(Dto12 dto);

}












