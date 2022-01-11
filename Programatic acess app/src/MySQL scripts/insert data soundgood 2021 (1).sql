INSERT INTO `sound_good_2021`.`brand` (`brand`) VALUES ('gibson');
INSERT INTO `sound_good_2021`.`brand` (`brand`) VALUES ('shure');
INSERT INTO `sound_good_2021`.`brand` (`brand`) VALUES ('yamaha');


INSERT INTO `sound_good_2021`.`discount` (`sibling_discount`) VALUES ('5');
INSERT INTO `sound_good_2021`.`discount` (`sibling_discount`) VALUES ('10');
INSERT INTO `sound_good_2021`.`discount` (`sibling_discount`) VALUES ('20');
INSERT INTO `sound_good_2021`.`discount` (`sibling_discount`) VALUES ('30');
INSERT INTO `sound_good_2021`.`lesson_type` (`type_of_lesson`, `lesson_price`, `level_of_skill_price`, `discount_id`) VALUES ('group', '100', '50', '1');
INSERT INTO `sound_good_2021`.`lesson_type` (`type_of_lesson`, `lesson_price`, `level_of_skill_price`, `discount_id`) VALUES ('individual', '150', '20', '1');
INSERT INTO `sound_good_2021`.`lesson_type` (`type_of_lesson`, `lesson_price`, `level_of_skill_price`, `discount_id`) VALUES ('ensemble', '120', '30', '2');
INSERT INTO `sound_good_2021`.`person` (`first_name`, `psnmr`) VALUES ('', '19450516-7785');
INSERT INTO `sound_good_2021`.`person` (`psnmr`) VALUES ('19580917-8055');
INSERT INTO `sound_good_2021`.`person` (`psnmr`) VALUES ('19951229-3730');
INSERT INTO `sound_good_2021`.`person` (`psnmr`) VALUES ('19910518-5004');
INSERT INTO `sound_good_2021`.`person` (`psnmr`) VALUES ('20130712-0996');
INSERT INTO `sound_good_2021`.`student` (`id`, `age`, `person_id`) VALUES ('1', '10', '1');
INSERT INTO `sound_good_2021`.`student` (`id`, `age`, `person_id`) VALUES ('2', '15', '2');
UPDATE `sound_good_2021`.`person` SET `first_name` = 'adam', `last_name` = 'stark', `street` = '1', `city` = 'stockholm' WHERE (`id` = '1');
UPDATE `sound_good_2021`.`person` SET `first_name` = 'josef', `last_name` = 'granstrom', `street` = '2', `city` = 'stockholm' WHERE (`id` = '2');
UPDATE `sound_good_2021`.`person` SET `first_name` = 'calle', `last_name` = 'fors', `street` = '3', `city` = 'göteborg' WHERE (`id` = '3');
UPDATE `sound_good_2021`.`person` SET `first_name` = 'sofia', `last_name` = 'berlin', `street` = '4', `city` = 'malmö' WHERE (`id` = '4');
UPDATE `sound_good_2021`.`person` SET `first_name` = 'anton', `last_name` = 'yxa', `street` = '5', `city` = 'östersund' WHERE (`id` = '5');
INSERT INTO `person` (`first_name`, `last_name`, `psnmr`, `street`,`city`)
VALUES
  ("Rafael","Sanders","19440814-1549","106-315 Metus. Ave","Ramsel"),
  ("Clark","Burks","19840807-1580","820-1950 Luctus, Avenue","Tarakan"),
  ("Yuli","Ayers","19320125-2933","Ap #783-8588 Sem Road","San Juan de Pasto"),
  ("Louis","Kidd","19370526-1489","870-7398 Vitae Avenue","Umerkot"),
  ("Benjamin","Barry","19841105-9275", "Ap #995-4269 Nam Avenue","Kohima");
  INSERT INTO `sound_good_2021`.`student` (`age`, `person_id`) VALUES ('20', '6');
INSERT INTO `sound_good_2021`.`student` (`age`, `person_id`) VALUES ('50', '7');
INSERT INTO `sound_good_2021`.`student` (`age`, `person_id`) VALUES ('55', '8');
INSERT INTO `sound_good_2021`.`student` (`age`, `person_id`) VALUES ('15', '9');
INSERT INTO `sound_good_2021`.`teacher` (`teacher_id`, `person_id`) VALUES ('1', '1');
INSERT INTO `sound_good_2021`.`teacher` (`teacher_id`, `person_id`) VALUES ('2', '2');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`,`brand_id`) VALUES ('fiol', '50','1','1');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`,`brand_id`) VALUES ('gitarr','50' ,'2','1');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`,`brand_id`) VALUES ('piano', '200','1','2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `location`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('10', '2021-03-20 13:00:00', 'sal b', '2021-03-20 15:00:00','pop', 'beginner', '1','2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `location`, `end_time`, `genre`, `level_of_skill`,`lesson_type_id`, `teacher_id`) VALUES ('1', '2020-03-21 13:00:00', 'sal a', '2020-03-21 15:00:00', 'rock','intermediate','1','1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('30', '2021-04-21 13:00:00', '2021-04-21 15:00:00', 'advanced', '2', '1');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2021-03-21 13:00:00', `end_time` = '2021-03-21 15:00:00' WHERE (`id` = '2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-04-21 13:00:00', '2021-04-21 14:00:00', 'beginner', '3', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('4', '2021-05-21 13:00:00', '2021-05-21 14:00:00', 'jazz', 'beginner', '2', '2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-07-21 13:00:00', '2021-07-21 14:00:00', 'intermediate', '1', '2');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal c' WHERE (`id` = '3');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal a' WHERE (`id` = '4');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal b' WHERE (`id` = '5');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal c' WHERE (`id` = '6');
UPDATE `sound_good_2021`.`class` SET `lesson_type_id` = '2' WHERE (`id` = '4');
UPDATE `sound_good_2021`.`class` SET `lesson_type_id` = '2' WHERE (`id` = '6');
UPDATE `sound_good_2021`.`class` SET `lesson_type_id` = '1' WHERE (`id` = '5');
UPDATE `sound_good_2021`.`class` SET `lesson_type_id` = '2' WHERE (`id` = '2');
UPDATE `sound_good_2021`.`class` SET `lesson_type_id` = '3' WHERE (`id` = '3');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `location`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('8', '2021-07-22 13:00:00', ' sal b', '2021-07-22 14:00:00', 'beginner', '1', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `location`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('3', '2021-07-23 13:00:00', 'sal d', '2021-07-23 14:00:00', 'beginner', '3', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('4', '2021-04-25 13:00:00', '2021-04-25 15:00:00', 'beginner', '1', '2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-07-25 13:00:00', '2021-07-25 15:00:00', 'intermediate', '2', '2');
INSERT INTO `sound_good_2021`.`class` (`id`, `amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('11', '1', '2021-08-26 13:00:00', '2021-08-26 15:00:00', 'beginner', '2', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `location`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('30', '2021-12-26 13:00:00', 'sal c', '2021-12-26 17:00:00', 'rock', 'beginner', '3', '1');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal a' WHERE (`id` = '11');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal b' WHERE (`id` = '10');
UPDATE `sound_good_2021`.`class` SET `location` = 'sal a' WHERE (`id` = '9');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-12-29 13:00:00', '2021-12-29 14:00:00', 'intermediate', '2', '1');
INSERT INTO `sound_good_2021`.`teacher` (`teacher_id`, `person_id`) VALUES ('3', '5');
INSERT INTO `sound_good_2021`.`teacher` (`teacher_id`, `person_id`) VALUES ('4', '4');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-12-15 12:00:00', '2021-12-15 13:00:00', 'beginner', '2', '3');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('5', '2021-12-15 12:00:00', '2021-12-15 13:00:00', 'advanced', '1', '3');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2021-12-14 12:00:00', '2021-12-14 13:00:00', 'advanced', '2', '3');
UPDATE `sound_good_2021`.`class` SET `genre` = 'rock' WHERE (`id` = '3');
UPDATE `sound_good_2021`.`class` SET `genre` = 'pop' WHERE (`id` = '8');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('10', '2022-01-05 12:00:00', '2022-01-05 13:00:00', 'beginner', '3', '2');
UPDATE `sound_good_2021`.`class` SET `genre` = 'rock' WHERE (`id` = '17');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('8', '2022-01-06 12:00:00', '2022-01-06 13:00:00', 'pop', 'beginner', '3', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('7', '2022-01-06 14:00:00', '2022-01-06 16:00:00', 'classic', 'advanced', '3', '3');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('5', '2022-01-06 14:00:00', '2022-01-06 16:00:00', 'classic', 'beginner', '3', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('8', '2022-01-07 14:00:00', '2022-01-07 15:00:00', 'rock', 'beginner', '3', '2');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `genre`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('4', '2022-01-03 14:00:00', '2022-01-03 15:00:00', 'pop', 'beginner', '3', '1');
INSERT INTO `sound_good_2021`.`class` (`amount_of_students`, `time_of_lesson`, `end_time`, `level_of_skill`, `lesson_type_id`, `teacher_id`) VALUES ('1', '2022-01-03 14:00:00', '2022-01-03 15:00:00', 'intermediate', '2', '3');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`,`brand_id`) VALUES ('trummor','150', '2','1');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`,  `discount_id`,`brand_id`) VALUES ('bas','100', '1','1');

INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('1', '1');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('1', '2');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('1', '3');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('2', '3');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('2', '4');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('3', '1');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('3', '2');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('3', '3');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('4', '1');
INSERT INTO `sound_good_2021`.`teacher_instrument` (`teacher_id`, `instrument_id`) VALUES ('4', '5');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `duration`,  `instrument_id`, `student_id`) VALUES ('2021-05-10', '2021-07-10', '1', '2');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `duration`,  `instrument_id`, `student_id`) VALUES ('2021-07-10', '2021-08-10', '3', '1');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `duration`,  `instrument_id`, `student_id`) VALUES ('2021-07-10', '2021-09-10', '2', '1');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `duration`, `instrument_id`, `student_id`) VALUES ('2021-10-10', '2021-11-10', '1', '2');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('fiol', '100','1', '2');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('trummor', '200', '2', '3');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2022-04-10', '5', '1');
INSERT INTO `sound_good_2021`.`rent` (`start_date`,  `instrument_id`, `student_id`) VALUES ('2022-04-10', '6', '6');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2022-05-10', '3', '2');
INSERT INTO `sound_good_2021`.`rent` (`start_date`,  `instrument_id`, `student_id`) VALUES ('2021-10-10', '2', '5');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2021-11-11', '2', '2');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2021-08-11', '2', '1');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2021-07-11', '4', '4');
INSERT INTO `sound_good_2021`.`rent` (`start_date`, `instrument_id`, `student_id`) VALUES ('2021-06-11', '1', '3');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('fiol', '50', '1', '1');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('fiol', '50', '2', '1');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('bas', '100', '1', '1');
UPDATE `sound_good_2021`.`rent` SET `start_date` = '2021-11-11' WHERE (`id` = '12');
UPDATE `sound_good_2021`.`rent` SET `duration` = '2021-11-10' WHERE (`id` = '8');
UPDATE `sound_good_2021`.`rent` SET `instrument_id` = '4' WHERE (`id` = '10');
UPDATE `sound_good_2021`.`rent` SET `duration` = '2021-08-10' WHERE (`id` = '11');
INSERT INTO `sound_good_2021`.`instrument` (`type_of_instrument`, `rent_instrument_price`, `discount_id`, `brand_id`) VALUES ('fiol', '150', '1', '3');
UPDATE `sound_good_2021`.`rent` SET `start_date` = '2021-08-10' WHERE (`id` = '5');
UPDATE `sound_good_2021`.`rent` SET `start_date` = '2021-10-05' WHERE (`id` = '6');
UPDATE `sound_good_2021`.`rent` SET `start_date` = '2021-08-11' WHERE (`id` = '7');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-20 14:00:00' WHERE (`id` = '23');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-17 14:00:00' WHERE (`id` = '22');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-18 14:00:00' WHERE (`id` = '21');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-17 14:00:00' WHERE (`id` = '20');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-19 14:00:00' WHERE (`id` = '19');
UPDATE `sound_good_2021`.`class` SET `time_of_lesson` = '2022-01-20 12:00:00' WHERE (`id` = '17');

USE sound_good_2021;
CREATE  OR REPLACE VIEW view_total_lesson_month AS
select count(type_of_lesson) as total_lessons, 
month(time_of_lesson), 
SUM(type_of_lesson = 'individual') as individual, 
SUM(type_of_lesson = 'group') as grouplesson, 
SUM(type_of_lesson = 'ensemble') as ensemble
from class 

INNER JOIN lesson_type ON class.lesson_type_id = lesson_type.id
where year(class.time_of_lesson) =2021

group by month(time_of_lesson)
ORDER BY month(time_of_lesson) ASC;







