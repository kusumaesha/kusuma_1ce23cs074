show databases ;
create database student_management;
use student_management;

create table student(
	std_id int primary key,
    std_name varchar(50),
    std_roll int,
    std_email varchar(40)
    );

 insert into student(std_id, std_name, std_roll, std_email)
values(1,"kusuma",101,'kusuma@gmail.com');

select *from student;
select std_name, std_email from student;

alter table student
add column std_class_room varchar(20);

desc student;
select * from students;

alter table students 
add column std_class_room1 varchar(20) default 'cs013';

desc students;

alter table student
drop column std_class_room;


insert into students(std_id,std_name,std_roll,std_email,std_class_room1) values
(2, "kavi",102,'kavpav@gmail.com','cs103'),
(3,"pall",103,'kavpavpal@gmail.com','cs103'),
(4,"aish",104,'aish@gmail.com','cs103'),
(5,"pulav",105,'pulav@gmail.com','cs103');

select * from students limit 2;

select * from students where std_id=2;

select * from students limit 3 offset 1;

desc students;

update students 
set std_class_room1 = 'cs103'
where std_id = 1;

delete from students 
where std_id = 2;

truncate students;

drop table students;

drop database student_management;

select database();
alter table student
drop column std_class_room;

