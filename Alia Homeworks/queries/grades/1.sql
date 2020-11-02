use db1;
select student.id, student.`name` as student_name, `group`.`name` as group_name 
from student 
inner join `group` 
on student.group_id = `group`.id;