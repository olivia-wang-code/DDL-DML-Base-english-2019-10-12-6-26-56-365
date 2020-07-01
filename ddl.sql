-- **Database level:**
-- Display all the database\

SHOW DATABASES;


-- Enter a certain database

USE sql_ddl;

-- Create a database

CREATE DATABASE olivia;

-- Create the database of the designated character set

CREATE DATABASE `base2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Display the creation information fo the database

SHOW  CREATE DATABASE olivia;

-- Revise the codes of the database

ALTER DATABASE olivia CHARSET=gbk COLLATE=gbk_chinese_ci;

-- Delete a database

DROP DATABASE olivia;

-- **Table level**
-- Revise table name

CREATE TABLE student
(
	id VARCHAR(3) PRIMARY KEY,
	NAME VARCHAR(10),
	age INT,
	sex VARCHAR(5)
)
RENAME TABLE student TO student1;


-- Revise the field's data type

ALTER TABLE student1 USER MODIFY sex VARCHAR(100);

-- Revise field name

ALTER TABLE student1 CHANGE age studentAge INT;

-- Add field

ALTER TABLE student1 ADD hobby VARCHAR(30）;

-- Delete field

ALTER TABLE student1 DROP hobby;

-- Revise the table's storage engine

ALTER TABLE student1 ENGINE=INNODB;

-- Delete the table's foreign key restriant

ALTER TABLE student1 ADD
CONSTRAINT student_class
FOREIGN KEY (id)
REFERENCE class(id)
ON DELETE CASCADE;

ALTER TABLE student1 DROP FOREIGN KEY student_class;

-- Delete a table

DROP TABLE student1;