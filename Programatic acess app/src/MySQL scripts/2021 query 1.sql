select 
month(time_of_lesson)as month,
count(type_of_lesson) as total_lessons,
SUM(type_of_lesson = 'individual') as individual, 
SUM(type_of_lesson = 'group') as grouplesson, 
SUM(type_of_lesson = 'ensemble') as ensemble

from class 

INNER JOIN lesson_type ON class.lesson_type_id = lesson_type.id

where year(class.time_of_lesson) =2021

group by month(time_of_lesson)

ORDER BY month(time_of_lesson) ASC