select id, weekday(time_of_lesson) as weekday, genre, amount_of_students,
CASE
    WHEN amount_of_students >= 10 THEN 'class is full'
    WHEN amount_of_students = 9 THEN 'one seat left'
    WHEN amount_of_students = 8 THEN 'two seats left'
    else 'many seats left'
END Seat_status

from class
where lesson_type_id = 3 AND week(time_of_lesson) = week(date_add(curdate(), interval 1 week)) and year(time_of_lesson) = year(curdate())
order by weekday ASC, genre