package com.example.demo.mapper;

import java.time.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper05 {

	@Update("""
			UPDATE MyTable39
			SET Col2 = '수정된 값', Col3 = 9999
			""")
	int sql1();
	
	@Update("""
			UPDATE MyTable39
			SET Col2 = #{key}, Col3 = #{val1}
			WHERE Col1 = #{val2}
			""")
	int sql2(String key, Integer val1, Integer val2);
	
	@Update("""
			UPDATE Customers
			SET CustomerName = #{name}, Country = #{country}
			WHERE CustomerID = 10
			""")
	int sql3(String name, String country);

	@Update("""
			UPDATE Customers
			SET
				CustomerName = #{name},
				Address = #{address},
				ContactName = #{contactName},
				City = #{city},
				PostalCode = #{postalCode},
				Country = #{country}
			WHERE CustomerID = #{id}
			""")
	int sql4(Customer customer);
	
	@Select("""
			SELECT 
				CustomerID id,
				CustomerName name,
				ContactName,
				Address,
				City,
				Country,
				PostalCode
			FROM Customers
			WHERE CustomerID = #{id}
			""")
	Customer sql5(Integer id);
	
	@Select("""
			SELECT 
				EmployeeID id,
				LastName,
				FirstName,
				BirthDate birth,
				Photo,
				Notes
			FROM Employees
			WHERE EmployeeID = #{id}
			""")
	Employee sql6(Integer id);
	
	@Update("""
			UPDATE Employees
			SET
				LastName = #{lastName},
				FirstName = #{firstName},
				BirthDate = #{birth},
				Photo = #{photo},
				Notes = #{notes}
			WHERE EmployeeID = #{id}
			""")
	int sql7(Employee employee);
}














