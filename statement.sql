
--Data Definition Language (DDL)


CREATE TABLE student_2(
roll_no INT PRIMARY KEY
);


ALTER TABLE student_2 ADD Email VARCHAR(100);

ALTER TABLE student_2
ADD firstName VARCHAR(50) NOT NULL;

ALTER TABLE student_2
ADD lastName VARCHAR(30);

ALTER TABLE student_2
ADD age INT NOT NULL;

ALTER TABLE student_2
ADD course VARCHAR(100);


ALTER TABLE student ALTER COLUMN  VARCHAR(150);



EXEC sp_rename 'student_2', 'student_3';
EXEC sp_rename 'student_3', 'student_2';

DROP TABLE student_2;

TRUNCATE TABLE student_2;


--  Data Manipulation Language (DML)


INSERT INTO student_2 (roll_no, firstName, lastName, age, course)
VALUES
(01,'Shyam', 'Khan', 23, 'CSE');

INSERT INTO student_2 (roll_no, firstName, lastName, age, course)
VALUES
(02,'Mehtab', 'Khan', 22, 'CSE'),
(03,'Mehtab', 'Khan', 24, 'MECH'),
(04,'Abdul', 'Khan', 25, 'ECE'),
(05,'Amit', 'Kumar', 228, 'B.PHARMA');





SELECT * FROM student_2;

SELECT roll_no, firstName, lastName, course FROM student_2;

SELECT firstName, course, age FROM student_2;



UPDATE student_2
SET course = 'EEE'
WHERE roll_no = 1;

UPDATE student_2
SET course = 'CSE'
WHERE roll_no BETWEEN 1 AND 3;



DELETE FROM student_2
WHERE roll_no = 05;





