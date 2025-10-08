-- TABLES

DROP DATABASE IF EXISTS A1;
CREATE DATABASE A1;
USE A1;

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  age INT NOT NULL,
  gpa INT NOT NULL,
  place_of_living VARCHAR(30),
  satisfaction_of_studying INT NOT NULL
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  course_name VARCHAR(50),
  
  CONSTRAINT foreign_key_student_courses
  FOREIGN KEY (student_id)
  REFERENCES students(student_id)
);

CREATE TABLE grades (
  grade_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  test_1 INT,
  test_2 INT,
  test_3 INT,
  test_4 INT,
  
  CONSTRAINT foreign_key_student_grades
  FOREIGN KEY (student_id) 
  REFERENCES students(student_id)
);

CREATE TABLE activities(
  activity_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  off_pairs_campus VARCHAR(30),  
  on_pairs_campus VARCHAR(30),
  off_campus VARCHAR(30),
  
  CONSTRAINT foreign_key_student_activities
  FOREIGN KEY (student_id)
  REFERENCES students(student_id)
  );

CREATE TABLE reviews(
  reviews_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  Ukrainian_Modern_History INT,  
  English_for_Professional_and_Studying_Purposes INT,
  How_to_study_at_KSE INT,
  Intro_to_Mathematics INT,
  Linear_Algebra_Basics INT,
  Probability_Essentials INT,
  
  CONSTRAINT foreign_key_student_reviews
  FOREIGN KEY (student_id)
  REFERENCES students(student_id)
  );