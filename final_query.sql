-- QUERY


WITH MathStudents AS (
    SELECT student_id
    FROM courses
    WHERE course_name = 'Вступ до математики'
)
SELECT DISTINCT
    students.name,
    students.age,
    courses.course_name,
    grades.test_4,
    activities.off_pairs_campus,
    reviews.Intro_to_Mathematics AS review_Intro_to_Mathematics
FROM
    students
JOIN
    MathStudents ON students.student_id = MathStudents.student_id
JOIN
	courses ON students.student_id = courses.student_id
JOIN
	grades ON students.student_id = grades.student_id
JOIN 
	activities ON students.student_id = activities.student_id
JOIN
	reviews ON students.student_id = reviews.student_id
WHERE
	courses.course_name = 'Вступ до математики' AND
	grades.test_4 > (
    SELECT AVG(test_4)
	FROM grades
	)
ORDER BY
    students.name
LIMIT 10;