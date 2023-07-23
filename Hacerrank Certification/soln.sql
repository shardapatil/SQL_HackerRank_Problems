```
select s.roll_number, name from student_information s
join examination_marks e on s.roll_number = e.roll_number
where (subject_one+subject_two+subject_three) < 100
```
