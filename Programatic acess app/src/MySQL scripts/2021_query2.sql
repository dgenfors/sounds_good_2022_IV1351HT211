select SUM(total_lessons/12) as avg_total, SUM(individual/12) as avg_individual, SUM(grouplesson/12) as avg_group, SUM(ensemble/12) as avg_ensemble
FROM view_total_lesson_month