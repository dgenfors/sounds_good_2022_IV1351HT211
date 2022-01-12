select total_lesson, teacher_id, first_name, last_name
from(

select count(class.id) as total_lesson, teacher_id
from class
where month(time_of_lesson) = MONTH(curdate()) and year(time_of_lesson) = year(curdate())
Group by teacher_id
) Lessons_given

INNER JOIN person ON teacher_id = person.id

where total_lesson > 1

Order by total_lesson DESC


