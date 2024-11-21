-- Exercise Questions
-- 1. Concatenate Course Name and Semester: Write a query to list all courses, concatenating 
--    the course_name and semester fields with a hyphen between them. Like this: "IT Essentials - 2024-3"
Select concat(course_name, ' - ' , semester) FROM courses;

-- 2. Find Courses with Labs on Fridays: Write a query to find all courses that have a lab session scheduled on Friday.
--    Include only the course_id, course_name, and lab_time in the result.
SELECT course_id, course_name, lab_time FROM courses WHERE lab_time LIKE 'Fri%';

-- 3. Upcoming Assignments: Write a query to list all assignments with a due date after the current date.
SELECT title FROM assignments WHERE due_date > current_date;

-- 4. Count Assignments by Status: Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").
--    Hint: GROUP BY
SELECT count( title) FROM assignments GROUP BY status;

-- 5. Longest Course Name: Write a query to find the course with the longest course_name. Use the length() function to compare the lengths.
--    Hint: either use ORDER BY ... DESC or do it in two steps - first find the length, then the course.
SELECT course_name, length(course_name) FROM courses
ORDER BY  length(course_name) DESC;

-- 6. Uppercase Course Names: Write a query to return a list of all course names in uppercase.
SELECT upper(course_name) FROM courses; 

-- 7. Assignments Due in September:Write a query to list the titles of all assignments that are due in September, regardless of year. 
--    Use the LIKE operator to filter due_date.
SELECT title from assignments WHERE due_date like '____-09-__';

-- 8. Assignments with Missing Due Dates: Write a query to find all assignments where the due_date is missing. 
--    Note, there are no assignments with NULL due_dates initially, but one was added if you ran the INSERT statement in the examples above. 
--    Hint: due_date IS NULL
SELECT title FROM assignments WHERE due_date IS NULL;
