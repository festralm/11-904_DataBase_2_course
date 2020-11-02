use db1;
select students_grade.* 
from students_grade
inner join student
on students_grade.student_id = student.id
inner join `subject`
on students_grade.subject_id = `subject`.id
where student.id = 26 and `subject`.id = 4;