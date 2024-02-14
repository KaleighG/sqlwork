 CREATE TABLE TEACHERS(
   teacherID BIGSERIAL PRIMARY KEY,
   fName VARCHAR(30) NOT NULL,
   sub VARCHAR(30) NOT NULL
);

 CREATE TABLE CLASSROOMS(
   classID BIGSERIAL PRIMARY KEY,
   roomNum BIGINT NOT NULL,
   classAvg INT NOT NULL
);

 CREATE TABLE STUDENTS(
  ID BIGSERIAL NOT NULL PRIMARY KEY,
  fName varchar(30) NOT NULL,
  grade int NOT NULL,
  teacherID BIGINT REFERENCES TEACHERS(teacherID),
  classID BIGINT REFERENCES CLASSROOMS(classID)
);


INSERT INTO STUDENTS(fName, grade, teacherID, classID) 
VALUES 
    ('Emma', 10, 2, 1),
    ('Michael', 11, 3, 2),
    ('Sophia', 9, 4, 3),
    ('William', 10, 5, 4),
    ('Olivia', 11, 6, 5),
    ('James', 9, 7, 6),
    ('Ava', 10, 8, 7),
    ('Elijah', 11, 9, 8),
    ('Isabella', 9, 10, 9),
    ('Liam', 9, 1, 10),
    ('Charlotte', 10, 2, 11),
    ('Amelia', 11, 3, 12),
    ('Mason', 9, 4, 13),
    ('Harper', 10, 5, 14),
    ('Ethan', 11, 6, 15),
    ('Evelyn', 9, 7, 16),
    ('Benjamin', 10, 8, 17),
    ('Abigail', 11, 9, 18),
    ('Mia', 9, 10, 19),
    ('Alexander', 9, 1, 20),
    ('Elizabeth', 10, 2, 21),
    ('Daniel', 11, 3, 22),
    ('Sofia', 9, 4, 23),
    ('Henry', 10, 5, 24),
    ('Ella', 11, 6, 25),
    ('Matthew', 9, 7, 1),
    ('Avery', 10, 8, 2),
    ('Scarlett', 11, 9, 3),
    ('David', 9, 10, 4),
    ('Grace', 9, 1, 5),
    ('Jackson', 10, 2, 6),
    ('Victoria', 11, 3, 7),
    ('Lucas', 9, 4, 8),
    ('Chloe', 10, 5, 9),
    ('Zoe', 11, 6, 10),
    ('Gabriel', 9, 7, 11),
    ('Madison', 10, 8, 12),
    ('Logan', 11, 9, 13),
    ('Penelope', 9, 10, 14),
    ('Joseph', 9, 1, 15),
    ('Riley', 10, 2, 16),
    ('Nora', 11, 3, 17),
    ('Samuel', 9, 4, 18),
    ('Hazel', 10, 5, 19),
    ('Levi', 11, 6, 20),
    ('Luna', 9, 7, 21),
    ('Dylan', 10, 8, 22),
    ('Brooklyn', 11, 9, 23),
    ('Mila', 9, 10, 24),
    ('Aiden', 9, 1, 25);

INSERT INTO CLASSROOMS(roomNum, classAvg) VALUES
   (111, 78),
   (212, 85),
   (313, 92),
   (114, 79),
   (215, 88),
   (316, 82),
   (117, 90),
   (218, 84),
   (319, 87),
   (120, 91),
   (221, 83),
   (322, 86),
   (123, 77),
   (224, 89),
   (325, 81),
   (126, 93),
   (227, 76),
   (328, 94),
   (129, 80),
   (230, 95),
   (331, 75),
   (132, 84),
   (233, 89),
   (334, 88),
   (135, 82);

INSERT INTO TEACHERS(fName, sub) VALUES 
('Adam', 'Physics'),
('Laura', 'Geography'),
('Daniel', 'Chemistry'),
('Hannah', 'Biology'),
('Robert', 'Physical Education'),
('Sophia', 'Music'),
('Matthew', 'Economics'),
('Olivia', 'Foreign Languages'),
('Jacob', 'Literature'),
('Ava', 'Drama'),
('William', 'Social Studies'),
('Isabella', 'Health'),
('Ethan', 'Mathematics'),
('Mia', 'Psychology'),
('James', 'Religious Studies'),
('Amelia', 'Sociology'),
('Benjamin', 'Environmental Science'),
('Charlotte', 'Government'),
('Alexander', 'Anthropology'),
('Ella', 'Business'),
('Michaela', 'Technology'),
('Luke', 'Philosophy'),
('Grace', 'Civics'),
('Ryan', 'Astronomy'),
('Lily', 'Computer Programming');

SELECT * FROM TEACHERS;
SELECT fName FROM STUDENTS ORDER BY fName;
select * from teachers join students on students.teacherid=teachers.teacherid;
select * from classrooms join students on students.classid=classrooms.classid;
select * from classrooms join students on students.classid=classrooms.classid where students.classid = 10;