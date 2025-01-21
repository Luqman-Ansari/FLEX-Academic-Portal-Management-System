CREATE DATABASE FLEX

create database flex2


USE master;
GO
ALTER DATABASE flex2 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE flex2;
GO


USE FLEX2
GO

CREATE TABLE PERSON
(
	CNIC float primary key NOT NULL, --check (len(cnic) = 13),
	FIRST_NAME VARCHAR(255) NOT NULL,
	LAST_NAME VARCHAR(255) NOT NULL,
	DoB DATEtime NOT NULL,
	PHONE_NO float NOT NULL,
	EMAIL VARCHAR(255) CHECK (email LIKE '%@%.com%') NOT NULL
);

create table login
(
	id int not null identity(1,1) primary key,
	cnic float unique,
	username nvarchar(50) unique not null,
	PASSWORD nVARCHAR(255) NOT NULL,-- CHECK (PASSWORD LIKE '%[a-zA-Z]%' AND PASSWORD LIKE '%[0-9]%' AND len(password) >= 8),
	role varchar(255)
);



CREATE TABLE STUDENT
(
	NU_ID nVarchar(255) PRIMARY KEY NOT NULL, --CHECK(NU_ID LIKE '___-____'),
	CNIC float NOT NULL
);

CREATE TABLE FACULTY
(
	NU_ID nVarchar(255) PRIMARY KEY NOT NULL,
	CNIC float NOT NULL
);

CREATE TABLE ADMIN_OFFICER
(
	NU_ID nVarchar(255) PRIMARY KEY NOT NULL,
	CNIC float NOT NULL
);

CREATE TABLE SEMESTER
(
	SEMESTER_NO float NOT NULL,
	SGPA float,
	NU_ID nVARCHAR(255),
	PRIMARY KEY(NU_ID, SEMESTER_NO)
);

CREATE TABLE COURSE
(
	code nvarchar(255) primary key,
	REGISTERED_STUDENTS float,
	PRE_REQ nvarchar(255),
	coordinator nvarchar(255)
);

CREATE TABLE STUDIED_COURSES
(
	SEMESTER_NO float,
	COURSE_ID nvarchar(255),
	grade nvarchar(255),
	STUDENT_ID nVARCHAR(255),

	PRIMARY KEY(SEMESTER_NO, COURSE_ID, STUDENT_ID)

);

create table course_offer
(
	course_name nvarchar(255),
	course_code nvarchar(255),
	CREDIT_HOURS float NOT NULL,
	primary key(course_code)
);

CREATE TABLE SECTION 
(
	ID NUMERIC IDENTITY(1,1) NOT NULL UNIQUE,
	NAME nVARCHAR(255) NOT NULL,
	CourseID nvarchar(255) not null,
	STRENGTH float,
	PRIMARY KEY(courseID, Name)

);


CREATE TABLE REGISTER
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	ATTENDANCE float,
	SECTION_ID numeric,
	STUDENT_ID nVARCHAR(255),
	COURSE_ID nvarchar(255),
);

CREATE TABLE FEEDBACK
(
	ID NUMERIC IDENTITY(1, 1) PRIMARY KEY,
	COMMENTS nVARCHAR(100)
);

CREATE TABLE FEEDBACK_RELATION
(
	NU_ID nVARCHAR(255),
	INSTRUCTOR_ID nVARCHAR(255),
	COURSE_ID nvarchar(255),
	FEEDBACK_ID numeric,

	PRIMARY KEY(NU_ID, INSTRUCTOR_ID, COURSE_ID, FEEDBACK_ID)
);


CREATE TABLE TEACH
(
	FACULTY_ID nvarchar(255),
	COURSE_ID nvarchar(255),
	
	PRIMARY KEY(FACULTY_ID, COURSE_ID)
);

create table course_allocated
(
	sec_id numeric,
	teacher_id nvarchar(255),

	primary key(teacher_id, sec_id)
);

CREATE TABLE EVALUATION
(
	EVALUATION NUMERIC IDENTITY(1, 1) PRIMARY KEY,
	INSTRUCTOR_ID nVARCHAR(255),
	STUDENT_ID nVARCHAR(255),
	COURSE_ID nvarchar(255),
);

create table attend(
	student_id nvarchar(255),
	course_id nvarchar(255),
	aDay date,
	status nvarchar(255),

	primary key(student_id, course_id, aDay)
);

alter table attend add foreign key (student_id) references student;
alter table attend add foreign key (course_id) references course;
alter table student add foreign key (CNIC) references Person
alter table faculty add foreign key (CNIC) references Person 
alter table admin_officer add foreign key (CNIC) references Person 
alter table semester add FOREIGN KEY(NU_ID) REFERENCES STUDENT 
alter table course add FOREIGN KEY(pre_req) REFERENCES course_offer
alter table course add FOREIGN KEY(code) REFERENCES course_offer
alter table studied_courses add FOREIGN KEY (COURSE_ID) REFERENCES COURSE(code)
alter table studied_courses add FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(NU_ID) 
alter table section add foreign key (CourseID) references course 
alter table register add FOREIGN KEY(student_ID) REFERENCES STUDENT 
alter table register add FOREIGN KEY(course_ID) REFERENCES COURSE 
--alter table register add FOREIGN KEY (SECTION_ID) REFERENCES SECTION(ID) 
alter table feedback_relation add FOREIGN KEY (NU_ID) REFERENCES STUDENT(NU_ID) 
alter table feedback_relation add FOREIGN KEY (COURSE_ID) REFERENCES COURSE
alter table feedback_relation add FOREIGN KEY (FEEDBACK_ID) REFERENCES FEEDBACK(ID) 
alter table feedback_relation add FOREIGN kEY (INSTRUCTOR_ID) REFERENCES FACULTY(NU_ID) 
alter table teach add FOREIGN KEY (FACULTY_ID) REFERENCES FACULTY(NU_ID) 
alter table teach add FOREIGN KEY (COURSE_ID) REFERENCES COURSE
alter table evaluation add FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(NU_ID) 
alter table evaluation add FOREIGN KEY (INSTRUCTOR_ID) REFERENCES FACULTY(NU_ID) 
alter table evaluation add FOREIGN KEY (COURSE_ID) REFERENCES COURSE 
alter table course add  foreign key(coordinator) references faculty
alter table course_allocated add foreign key (sec_id) references section (ID)
alter table course_allocated add foreign key (teacher_id) references faculty


create procedure section_list
	@sec nVarchar(255), 
	@cname nVarchar(255)
as
begin
select (select cc.course_name from course_offer cc where cc.course_code = @cname)as 'Course Name' ,r.STUDENT_ID, 
(select p.FIRST_NAME + ' ' + p.LAST_NAME as 'Name' from STUDENT s inner join PERSON p on p.CNIC = s.CNIC where s.NU_ID = r.STUDENT_ID) as 'Name'
from register r
where r.COURSE_ID = @cname  and r.SECTION_ID = ( select s.ID from SECTION s where s.CourseID = r.COURSE_ID and s.NAME = @sec )
order by r.STUDENT_ID asc
end

exec section_list @cname = 'CS-1001', @sec = 'A'

select* from SECTION

create procedure course_allocation
	@course nVarchar(255)
as
begin
select c.code as 'Course Code', ( select s.course_name from course_offer s where s.course_code = c.code ) as 'Course Name',
( select s.CREDIT_HOURS from course_offer s where s.course_code = c.code ) as 'Credit Hours', s.NAME as 'Section',
( select p.FIRST_NAME + ' '+ p.LAST_NAME as 'Name' from FACULTY f inner join PERSON p on p.CNIC = f.CNIC where f.NU_ID = t.FACULTY_ID) as 'Instructor Name',
( select p.FIRST_NAME + ' '+ p.LAST_NAME as 'Name' from FACULTY f inner join PERSON p on p.CNIC = f.CNIC where f.NU_ID = c.coordinator) as 'Coordinater Name'
from teach t
inner join COURSE c on c.code = t.COURSE_ID
inner join section s on c.code = s.CourseID
where c.code = @course
end

exec course_allocation @course = 'CS-1003'


create procedure courses_offered
as
begin

select c.code as 'Course Code', ( select cc.course_name from course_offer cc where cc.course_code = c.code) as 'Course Name',
		( select cc.CREDIT_HOURS from course_offer cc where cc.course_code = c.code) as 'Credit Hours', c.Pre_req,
		( select cc.course_name from course_offer cc where cc.course_code = c.PRE_REQ) as 'Pre Req',  
		(select p.FIRST_NAME + ' ' + p.LAST_NAME from FACULTY f inner join person p on f.CNIC = p.CNIC where f.NU_ID = c.coordinator) as 'Coordinator'
from COURSE c

end

exec courses_offered 

select* 
from section 

create procedure delete_course
	@name nvarchar(255)
as
begin
delete from STUDIED_COURSES where COURSE_ID = @name
delete from teach where COURSE_ID = @name
delete from SECTION where CourseID = @name
delete from COURSE where code = @name
end

exec delete_course @name = 'MT-1007'

create procedure insert_course
	@name nvarchar(255),
	@code nvarchar(255),
	@credit float,
	@preReq nvarchar(255)
as
begin
IF NOT EXISTS (SELECT 1 FROM course_offer c WHERE c.course_code = @code)
	BEGIN
insert into course_offer values (@name, @code, @credit);
end
insert into course values(@code, 0,@preReq, NULL);
end

exec insert_course @name = 'Calculus', @code = 'MT-1007', @credit = 3, @preReq = null

create proc getAttendance
	@id nvarchar(255),
	@course nvarchar(255)
as
begin
	
	select ROW_NUMBER() OVER (ORDER BY a.aDay) AS 'Lecture No', a.aDay as 'Date', a.status as 'Presence' 
	from attend a 
	where a.student_id = @id and a.course_id = @course
end

exec getAttendance '21i-1234', 'CS-1001'


create proc GET_COURSE_OF_TEACHER
	@TEACHER_ID nvarchar(255)
as
begin
	SELECT TEACH.COURSE_ID FROM TEACH WHERE TEACH.FACULTY_ID = @TEACHER_ID
	
end

EXEC GET_COURSE_OF_TEACHER '1235'
 
 -- Trigger for trail

CREATE TABLE LOGS (Activity varchar(40), Dates date)

CREATE TRIGGER LOGS_maintain_student
ON STUDENT
AFTER INSERT
AS 
BEGIN
INSERT INTO LOGS VALUES ('Data is inserted in STUDENT table', GETDATE())
END 


CREATE TRIGGER LOGS_maintain_admin
ON ADMIN_OFFICER
AFTER INSERT
AS 
BEGIN
INSERT INTO LOGS VALUES ('Data is inserted in admin table', GETDATE())
END 

CREATE TRIGGER LOGS_maintain_faculty
ON faculty
AFTER INSERT
AS 
BEGIN
INSERT INTO LOGS VALUES ('Data is inserted in faculty table', GETDATE())
END 

CREATE TRIGGER LOGS_maintain_courses
ON COURSE
AFTER INSERT
AS 
BEGIN
INSERT INTO LOGS VALUES ('Data is inserted in courses table', GETDATE())
END 





