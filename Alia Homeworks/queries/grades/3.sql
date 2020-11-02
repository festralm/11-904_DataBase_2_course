use db1;
select student.id, students_grade.grade, students_grade.grade_date as date, 
student.`name` as student_name, `subject`.`name` as subject_name
from students_grade
inner join student on students_grade.student_id = student.id
inner join subject on students_grade.subject_id = subject.id;