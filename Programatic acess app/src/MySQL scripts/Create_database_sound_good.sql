
drop table if exists parent;
drop table if exists email;
drop table if exists person_phone;
drop table if exists phone;
drop table if exists student_skill_level;
drop table if exists skill_level;
drop table if exists student_sibling;
drop table if exists sibling;
drop table if exists student_class;
drop table if exists rent;
drop table if exists student;
drop table if exists class;
drop table if exists lesson_type;

drop table if exists teacher_instrument;
drop table if exists instrument;
drop table if exists brand;
drop table if exists teacher;
drop table if exists discount;
drop table if exists teacher;
drop table if exists person;

CREATE TABLE discount(id INT NOT NULL AUTO_INCREMENT, sibling_discount char(50), PRIMARY KEY (id));
CREATE TABLE lesson_type(id INT NOT NULL AUTO_INCREMENT, type_of_lesson char(50) NOT NULL, lesson_price char(50), level_of_skill_price char(10), discount_id int NOT NULL, FOREIGN KEY(discount_id) REFERENCES discount(id), PRIMARY KEY(id));
CREATE TABLE person(id INT NOT NULL AUTO_INCREMENT, first_name char(50), last_name char(50), psnmr char(50) UNIQUE NOT NULL, street char(50), city char(50), PRIMARY KEY (id));
CREATE TABLE teacher(id INT NOT NULL AUTO_INCREMENT, teacher_id char(50) UNIQUE NOT NULL, person_id int NOT NULL, FOREIGN KEY(person_id) REFERENCES person(id), PRIMARY KEY (id));
CREATE TABLE student(id int NOT NULL AUTO_INCREMENT, age char(10),person_id int NOT NULL, FOREIGN KEY(person_id) REFERENCES person(id), PRIMARY KEY (id));
CREATE TABLE class(id int NOT NULL AUTO_INCREMENT, amount_of_students INT NOT NULL, time_of_lesson timestamp NOT NULL, location char(50), end_time timestamp NOT NULL, genre char(50), level_of_skill char(50), lesson_type_id INT NOT NULL, teacher_id INT NOT NULL, FOREIGN KEY(teacher_id) REFERENCES teacher(id), PRIMARY KEY (id), FOREIGN KEY(lesson_type_id) REFERENCES lesson_type(id));
CREATE TABLE student_class(student_id int NOT NULL, class_id INT NOT NULL, FOREIGN KEY(student_id) REFERENCES student(id), FOREIGN KEY(class_id) REFERENCES class(id), PRIMARY KEY(student_id, class_id));
CREATE TABLE sibling( id INT NOT NULL AUTO_INCREMENT, family_name char(10), PRIMARY KEY(id));
CREATE TABLE student_sibling(sibling_id INT NOT NULL, student_id INT NOT NULL, FOREIGN KEY(sibling_id) REFERENCES sibling(id), FOREIGN KEY(student_id) REFERENCES student(id), PRIMARY KEY(sibling_id, student_id));
CREATE TABLE skill_level(id INT NOT NULL AUTO_INCREMENT, skill_level char(10) NOT NULL, PRIMARY KEY(id));
CREATE TABLE student_skill_level(student_id INT NOT NULL, skill_level_id INT NOT NULL, instrument_type char(10) NOT NULL, FOREIGN KEY(student_id) REFERENCES student(id), FOREIGN KEY (skill_level_id) REFERENCES skill_level(id), PRIMARY KEY(student_id, skill_level_id, instrument_type));
CREATE TABLE email(email char(50) NOT NULL, person_id INT NOT NULL, FOREIGN KEY(person_id) REFERENCES person(id), PRIMARY KEY(email,person_id));
CREATE TABLE parent(person_id INT NOT NULL, parent_id char(10) UNIQUE NOT NULL, FOREIGN KEY(person_id) REFERENCES person(id), PRIMARY KEY(parent_id));
CREATE TABLE phone(id INT NOT NULL AUTO_INCREMENT, phone char(50) UNIQUE NOT NULL, PRIMARY KEY (id));
CREATE TABLE person_phone(phone_id INT NOT NULL, person_id INT NOT NULL, FOREIGN KEY (phone_id) REFERENCES phone(id), FOREIGN KEY(person_id) REFERENCES person(id), PRIMARY KEY(phone_id, person_id));
CREATE TABLE brand(id int NOT NULL auto_increment, brand char(50) NOT NULL, PRIMARY KEY(id));
CREATE TABLE instrument(id INT NOT NULL auto_increment, type_of_instrument char(50) NOT NULL,rent_instrument_price char(50), discount_id int,brand_id int NOT NULL, FOREIGN KEY (discount_id) REFERENCES discount(id),foreign key (brand_id) REFERENCES brand(id), PRIMARY KEY(id,type_of_instrument,brand_id));
CREATE TABLE rent(id int not null auto_increment, start_date DATE NOT NULL, duration char(50),instrument_id INT NOT NULL,student_id INT NOT NULL,FOREIGN KEY(student_id) REFERENCES student(id), FOREIGN KEY(instrument_id) REFERENCES instrument(id), PRIMARY KEY(id));
CREATE TABLE teacher_instrument(teacher_id INT NOT NULL, instrument_id INT NOT NULL, FOREIGN KEY(teacher_id) REFERENCES teacher(id), FOREIGN KEY(instrument_id) references instrument(id),primary key(teacher_id, instrument_id));


