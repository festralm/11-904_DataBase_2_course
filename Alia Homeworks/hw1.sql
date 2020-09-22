create database university;
use university;
create table user_ (
	id integer auto_increment primary key
);
create table teachers (
	id integer auto_increment primary key,
    user_id integer,    
    foreign key (user_id) references user_ (id)
);
create table groups_ (
	id integer auto_increment primary key,
    group_name varchar(30),
    teacher_id integer,
    foreign key (teacher_id) references teachers (id)
);
create table students (
	id integer auto_increment primary key,
    user_id integer,
    group_id integer,
    foreign key (group_id) references groups_ (id)
);
create table marks (
	student_id integer,
    foreign key (student_id) references students (id)
)

