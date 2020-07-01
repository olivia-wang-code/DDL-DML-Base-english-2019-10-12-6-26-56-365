-- Insert record

CREATE TABLE student
(
	id VARCHAR(3) NOT NULL PRIMARY KEY,
	NAME VARCHAR(10) NOT NULL,
	age INT NOT NULL,
	sex VARCHAR(6) NOT NULL
)
INSERT INTO student(id,NAME,age,sex) VALUES('001','Colin',18,'male'),('002','Emma',20,'female');


-- Revise record

UPDATE student SET age=20 WHERE sex='male';

--  Delete record

DELETE FROM student WHERE NAME='emma';

-- Search record

SELECT * FROM student WHERE NAME='Colin';