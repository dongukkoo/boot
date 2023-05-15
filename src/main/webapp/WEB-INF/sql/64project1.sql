USE Board;
SELECT * FROM Board;
SELECT * FROM Member;

ALTER TABLE Board
ADD FOREIGN KEY (writer) REFERENCES Member(id);

UPDATE Board
SET writer = '111';

-- 권한 테이블
CREATE TABLE MemberAuthority(
	memberId VARCHAR(20) NOT NULL,
	authority VARCHAR(30) NOT NULL,
    FOREIGN KEY (memberId) REFERENCES Member(id),
    PRIMARY KEY (memberId, authority)
);

SELECT * FROM MemberAuthority;
DROP TABLE MemberAuthority;

INSERT INTO MemberAuthority
VALUES ('admin0', 'admin');

INSERT INTO MemberAuthority
VALUES ('admin00', 'admin');

DESC Member;
DESC MemberAuthority;
SELECT * FROM MemberAuthority;

SELECT *
			FROM Member m LEFT JOIN MemberAuthority ma ON m.id = ma.memberId
WHERE m.id = 'admin0';
SELECT * FROM Member;
SELECT * FROM Board;
DESC Member;
DELETE FROM Member 
WHERE nickName = 'admin0';

DROP TABLE MemberAuthority;

-- 권한 테이블
CREATE TABLE MemberAuthority (
	memberId VARCHAR(20) NOT NULL,
    authority VARCHAR(30) NOT NULL,
    FOREIGN KEY (memberId) REFERENCES Member(id),
    PRIMARY KEY (memberId, authority)
);
SELECT * FROM MemberAuthority;
DESC MemberAuthority;
INSERT INTO MemberAuthority 
VALUES ('111', 'admin');

DESC Member;
SELECT * FROM Member;

SELECT *
FROM Member m LEFT JOIN MemberAuthority ma ON m.id = ma.memberId
WHERE m.id = '111';

SELECT * FROM Member m LEFT JOIN MemberAuthority ma ON m.id = ma.memberId WHERE id = '111';
