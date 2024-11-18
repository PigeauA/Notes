-- EXERCISE QUESTIONS
-- Assignments for a Specific Course: Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT min(due_date)
FROM assignments;
-- Earliest Assignment Due Date: Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT max(due_date)
FROM assignments;

-- Latest Assignment Due Date: Write a query to find the latest assignment due date in the assignments table.
SELECT title, course_id
FROM assignments
WHERE due_date like '2024-10-08%';

-- Assignments Due on a Specific Date: Write a query to find the title and course_id of assignments due on 2024-10-08.
SELECT title, due_date
FROM assignments
WHERE due_date like '2024-10%';

-- Find All Assignments Due in October: Write a query to display the title and due_date of assignments due in October 2024. Hint: use LIKE '2024-10%'
SELECT max(due_date)
FROM assignments
WHERE status like 'Completed%';

-- Find the Most Recent Completed Assignment: Write a query to find the most recent due_date of assignments with a status of "Completed".

-- OPTIONAL TASKS
-- Count of "Not Started" Assignments: Write a query to find the total number of assignments with a status of "Not Started". Remember to use single quotes for strings in SQL.
-- Find Courses with Labs on Tuesday: Write a query to find the course_id and course_name of courses that have lab sessions on Tuesday. Hint: use LIKE 'Tue%
-- Write a query that joins the two tables: Hint -> JOIN the_other_table   ON courses.course_id = assignments.course_id
