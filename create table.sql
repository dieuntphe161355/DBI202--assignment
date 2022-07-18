create table Student(
	studentID int NOT NULL PRIMARY KEY,
	studentName Nvarchar(50) NOT NULL,
	gender BIT not NULL,
	dob  DATE not null
	)

create TABlE lecture(
	lecID int not null primary key,
	lecName nvarchar(50) not null
	)

create table [subject](
	subID int NOT NULL PRIMARY KEY,
	subjectName varchar(50) not null
	)

CREATE TABLE [group](
	groupID int NOT NULL PRIMARY KEY,
	groupName varchar(50) not null,
	lecID int not null,
	subID int not null,
	foreign key (lecID) references lecture(lecID),
	foreign key (subID) references [subject](subID)
	
	)

CREATE TABLE group_student(
	studentID int not null ,
	groupID int not null ,
	PRIMARY KEY(studentID, groupID),
	foreign key (studentID) references Student(studentID),
	foreign key (groupID) references [group](groupID)
)




create table assessment(
	assID int not null primary key,
	assName varchar(50) not null,
	subID int not null,
	[weight] int not null,
	foreign key (subID) references subject(subID)
	)

create table student_assessment(
	studentID int not null ,
	assID int not null ,
	score float not null ,
	PRIMARY KEY(studentID, assID),
	foreign key ( studentID) references student(studentID),
	foreign key (assID) references assessment(assID)
	)


--- insert 
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (1, 'Nguyen Van An',0, '2002-06-12')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (2, 'Nguyen Van Bien',1, '2002-06-13')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (3, 'Nguyen Thi Ha',0, '2002-06-14')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (4, 'Bui Van Hau',1, '2002-06-23')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (5, 'Bui Thi Thuy',0, '2002-06-11')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (6, 'Nguyen Thuy Duong',0, '2002-06-05')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (7, 'Nguyen Trung Duc',1, '2002-06-25')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (8, 'Tong Van Hoang',1, '2002-06-07')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (9, 'Nguyen Tuan Anh',1, '2002-06-17')
INSERT INTO Student(studentID,studentName,gender,dob)VALUES (10, 'Nguyen Van Dung',1, '2002-06-20')


INSERT INTO Lecture(lecID,lecName)VALUES (1,'huyentt')
INSERT INTO Lecture(lecID,lecName)VALUES (2,'sonnt')
INSERT INTO Lecture(lecID,lecName)VALUES (3,'anhdt')
INSERT INTO Lecture(lecID,lecName) VALUES (4,'caupd')


INSERT INTO Subject(subID,SubjectName)VALUES (1,'JPD113')
INSERT INTO Subject(subID,SubjectName)VALUES (2,'DBI202')
INSERT INTO Subject(subID,SubjectName)VALUES (3,'LAB211')
INSERT INTO Subject(subID,SubjectName)VALUES (4,'CSD201')


INSERT INTO [group](groupID,groupName,lecID,subID)VALUES (1, 'SE1647',1,1 )
INSERT INTO [group](groupID,groupName,lecID,subID)VALUES (2, 'HE1648',2,2 )
INSERT INTO [group](groupID,groupName,lecID,subID)VALUES (3, 'HE1649',3,3)
INSERT INTO [group](groupID,groupName,lecID,subID)VALUES (4, 'HE1650',4,4)
INSERT INTO [group](groupID,groupName,lecID,subID)VALUES (5, 'HE1651',5,5)



INSERT INTO group_student(studentID,groupID) VALUES(1,1)
INSERT INTO group_student(studentID,groupID) VALUES(1,2)
INSERT INTO group_student(studentID,groupID) VALUES(1,3)
INSERT INTO group_student(studentID,groupID) VALUES(1,4)
INSERT INTO group_student(studentID,groupID) VALUES(1,5)
INSERT INTO group_student(studentID,groupID) VALUES(2,1)
INSERT INTO group_student(studentID,groupID) VALUES(2,2)
INSERT INTO group_student(studentID,groupID) VALUES(2,3)
INSERT INTO group_student(studentID,groupID) VALUES(2,4)
INSERT INTO group_student(studentID,groupID) VALUES(2,5)
INSERT INTO group_student(studentID,groupID) VALUES(3,1)
INSERT INTO group_student(studentID,groupID) VALUES(3,2)
INSERT INTO group_student(studentID,groupID) VALUES(3,3)
INSERT INTO group_student(studentID,groupID) VALUES(3,4)
INSERT INTO group_student(studentID,groupID) VALUES(3,5)
INSERT INTO group_student(studentID,groupID) VALUES(4,1)
INSERT INTO group_student(studentID,groupID) VALUES(4,2)
INSERT INTO group_student(studentID,groupID) VALUES(4,3)
INSERT INTO group_student(studentID,groupID) VALUES(4,4)
INSERT INTO group_student(studentID,groupID) VALUES(4,5)
INSERT INTO group_student(studentID,groupID) VALUES(5,1)
INSERT INTO group_student(studentID,groupID) VALUES(5,2)
INSERT INTO group_student(studentID,groupID) VALUES(5,3)
INSERT INTO group_student(studentID,groupID) VALUES(5,4)
INSERT INTO group_student(studentID,groupID) VALUES(5,5)
INSERT INTO group_student(studentID,groupID) VALUES(6,1)
INSERT INTO group_student(studentID,groupID) VALUES(6,2)
INSERT INTO group_student(studentID,groupID) VALUES(6,3)
INSERT INTO group_student(studentID,groupID) VALUES(6,4)
INSERT INTO group_student(studentID,groupID) VALUES(6,5)
INSERT INTO group_student(studentID,groupID) VALUES(7,1)
INSERT INTO group_student(studentID,groupID) VALUES(7,2)
INSERT INTO group_student(studentID,groupID) VALUES(7,3)
INSERT INTO group_student(studentID,groupID) VALUES(7,4)
INSERT INTO group_student(studentID,groupID) VALUES(7,5)
INSERT INTO group_student(studentID,groupID) VALUES(8,1)
INSERT INTO group_student(studentID,groupID) VALUES(8,2)
INSERT INTO group_student(studentID,groupID) VALUES(8,3)
INSERT INTO group_student(studentID,groupID) VALUES(8,4)
INSERT INTO group_student(studentID,groupID) VALUES(8,5)
INSERT INTO group_student(studentID,groupID) VALUES(9,1)
INSERT INTO group_student(studentID,groupID) VALUES(9,2)
INSERT INTO group_student(studentID,groupID) VALUES(9,3)
INSERT INTO group_student(studentID,groupID) VALUES(9,4)
INSERT INTO group_student(studentID,groupID) VALUES(9,5)
INSERT INTO group_student(studentID,groupID) VALUES(10,1)
INSERT INTO group_student(studentID,groupID) VALUES(10,2)
INSERT INTO group_student(studentID,groupID) VALUES(10,3)
INSERT INTO group_student(studentID,groupID) VALUES(10,4)
INSERT INTO group_student(studentID,groupID) VALUES(10,5)



INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(1,'Assignment',1,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(2,'Lab',1,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(3,'Progress Test',1,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(4,'PE',1,30)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(5,'FE',1,30)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(6,'Assignment',2,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(7,'Lab',2,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(8,'Progress Test',2,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(9,'PE',2,30)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(10,'FE',2,30)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(11,'Assignment',3,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(12,'Lab',3,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(13,'Progress Test',3,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(14,'PE',3,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(15,'FE',3,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(16,'Assignment',4,20)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(17,'Lab',4,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(18,'Progress Test',4,10)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(19,'PE',4,30)
INSERT INTO assessment(assID,assName,subID,[weight]) VALUES(20,'FE',4,30)



INSERT INTO student_assessment(studentID,assID,score) VALUES(1,1,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,1,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,1,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,1,2)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,1,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,1,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,1,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,1,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,1,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,1,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(1,2,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,2,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,2,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,2,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,2,2)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,2,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,2,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,2,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,2,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,2,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(1,3,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,3,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,3,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,3,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,3,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,3,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,3,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,3,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,3,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,3,4)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,4,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,4,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,4,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,4,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,4,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,4,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,4,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,4,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,4,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,4,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(1,5,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,5,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,5,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,5,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,5,2)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,5,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,5,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,5,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,5,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,5,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,6,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,6,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,6,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,6,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,6,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,6,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,6,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,6,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,6,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,6,8)


INSERT INTO student_assessment(studentID,assID,score) VALUES(1,7,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,7,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,7,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,7,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,7,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,7,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,7,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,7,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,7,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,7,9)


INSERT INTO student_assessment(studentID,assID,score) VALUES(1,8,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,8,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,8,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,8,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,8,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,8,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,8,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,8,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,8,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,8,8)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,9,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,9,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,9,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,9,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,9,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,9,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,9,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,9,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,9,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,9,8)


INSERT INTO student_assessment(studentID,assID,score) VALUES(1,10,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,10,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,10,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,10,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,10,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,10,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,10,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,10,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,10,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,10,8)


INSERT INTO student_assessment(studentID,assID,score) VALUES(1,11,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,11,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,11,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,11,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,11,3)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,11,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,11,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,11,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,11,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,11,3)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,12,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,12,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,12,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,12,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,12,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,12,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,12,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,12,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,12,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,12,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,13,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,13,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,13,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,13,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,13,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,13,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,13,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,13,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,13,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,13,6)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,14,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,14,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,14,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,14,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,14,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,14,9)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,14,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,14,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,14,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,14,8)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,15,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,15,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,15,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,15,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,15,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,15,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,15,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,15,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,15,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,15,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,16,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,16,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,16,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,16,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,16,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,16,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,16,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,16,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,16,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,16,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,17,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,17,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,17,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,17,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,17,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,17,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,17,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,17,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,17,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,17,8)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,18,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,18,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,18,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,18,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,18,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,18,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,18,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,18,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,18,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,18,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,19,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,19,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,19,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,19,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,19,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,19,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,19,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,19,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,19,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,19,7)

INSERT INTO student_assessment(studentID,assID,score) VALUES(1,20,4)
INSERT INTO student_assessment(studentID,assID,score) VALUES(2,20,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(3,20,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(4,20,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(5,20,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(6,20,5)
INSERT INTO student_assessment(studentID,assID,score) VALUES(7,20,6)
INSERT INTO student_assessment(studentID,assID,score) VALUES(8,20,7)
INSERT INTO student_assessment(studentID,assID,score) VALUES(9,20,8)
INSERT INTO student_assessment(studentID,assID,score) VALUES(10,20,5)