SELECT s.Student_Name, c.Course_Name, i.Instructor_Name
FROM StudentCourses_2NF as sc
JOIN Students_1NF s ON sc.Student_ID = s.Student_ID
JOIN Courses_3NF c ON sc.Course_ID = c.Course_ID
JOIN Instructors_3NF i ON c.Instructor_ID = i.Instructor_ID;

SELECT c.Course_Name
FROM Courses_3NF c
JOIN Instructors_3NF i ON c.Instructor_ID = i.Instructor_ID
WHERE i.Instructor_Name = 'Mrs. Smith';


SELECT s.Student_Name
FROM StudentCourses_2NF sc
JOIN Students_1NF s ON sc.Student_ID = s.Student_ID
JOIN Courses_3NF c ON sc.Course_ID = c.Course_ID
WHERE c.Course_Name = 'Physics';


SELECT c.Course_Name, COUNT(sc.Student_ID) AS Student_Count
FROM StudentCourses_2NF sc
JOIN Courses_3NF c ON sc.Course_ID = c.Course_ID
GROUP BY c.Course_Name;


SELECT i.Instructor_Name, c.Course_Name
FROM Instructors_3NF i
LEFT JOIN Courses_3NF c ON i.Instructor_ID = c.Instructor_ID
ORDER BY i.Instructor_Name;