use db1;
select students_grade.* from students_grade
inner join student
on students_grade.student_id = student.id
where student.group_id = 4;