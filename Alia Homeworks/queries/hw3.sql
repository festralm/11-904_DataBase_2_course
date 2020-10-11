select group_name from groups_ where teacher_id = 1;
select teacher_id, count(*) from groups_ group by teacher_id;
select distinct teacher_id from groups_;
select * from marks order by mark;
select * from marks order by mark desc limit 4;
select student_id, avg(mark) from marks group by student_id;
select * from students order by rand() limit 1;
select * from students where user_id = 2;
select id from teachers where user_id >= 5;
select id, username from user;

