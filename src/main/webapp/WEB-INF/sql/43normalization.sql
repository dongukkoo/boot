-- 제1정규화 (1NF)
-- 규칙1) 열은 우너자적 값만을 포함한다.
-- 규칙2) 같은 데이터가 여러 열에 반복되지 말아야 한다.
-- 규칙3) 각 행은 유일무이한 식별자인 기본키를 가지고 있어야 한다.

-- 제2정규화 (2NF)
-- 규칙1) 1NF이여야 한다.
-- 규칙2) 부분적 함수 의존이 없다.

-- 제3정규화 (3NF)
-- 규칙1) 2NF이여야 한다.
-- 규칙2) 이행적 종속이 없다.



-- *기본키 : 각 레코드를 다른 레코드와 구분하는 열.
-- 1) 기본키는 NULL이 될 수 없습니다.
-- 2) 기본키는 레코드가 삽일될 때 값이 있어야 합니다.
-- 3) 기본키는 간결해야 합니다.
-- 4) 기본키의 값은 변경 불가입니다.
-- > 기본키를 위한 열을 새로만들기

CREATE TABLE Student(
	ID INT PRIMARY KEY AUTO_INCREMENT,  -- 인위적 키 컬럼
	Name VARCHAR(50)
);

CREATE TABLE StudentPhone(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
	Phone VARCHAR(50)
);

CREATE TABLE Book(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Price INT,
    Title VARCHAR(50),
    Published DATE
);







