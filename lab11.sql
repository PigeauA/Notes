-- EXERCISE QUESTIONS
-- 1. Assignments for a Specific Course: Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
where course_id LIKE 'COMM%';

-- 2. Earliest Assignment Due Date: Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT min(due_date)
FROM assignments;

-- 3. Latest Assignment Due Date: Write a query to find the latest assignment due date in the assignments table.
SELECT max(due_date)
FROM assignments;

-- 4. Assignments Due on a Specific Date: Write a query to find the title and course_id of assignments due on 2024-10-08.
SELECT title, course_id
FROM assignments
WHERE due_date like '2024-10-08%';

-- 5. Find All Assignments Due in October: Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%';

-- 6. Find the Most Recent Completed Assignment: Write a query to find the most recent due_date of assignments with a status of "Completed".
SELECT max(due_date)
FROM assignments
WHERE status like 'Completed%';

-- OPTIONAL TASKS
-- 1. Count of "Not Started" Assignments: Write a query to find the total number of assignments with a status of "Not Started". Remember to use single quotes for strings in SQL.
SELECT COUNT(status)
FROM assignments
WHERE status like 'Not Started%';

-- 2. Find Courses with Labs on Tuesday: Write a query to find the course_id and course_name of courses that have lab sessions on Tuesday. Hint: use LIKE 'Tue%
SELECT course_id, course_name
FROM courses
WHERE lab_time like 'Tue%';

-- 3. Write a query that joins the two tables: Hint -> JOIN the_other_table   ON courses.course_id = assignments.course_id
SELECT assignments.course_id, assignments.title, assignments.due_date
FROM assignments
JOIN courses
ON courses.course_id = assignments.course_id;
