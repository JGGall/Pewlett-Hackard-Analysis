--Module 7 challenge
--Deliverable 1 part 1
--Get employees born 1952-1955 with titles and export as retirement titles
SELECT employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
--INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

--Deliverable 1 part 2
--Remove duplicates to get unique titles using DISTINCT ON and starter code

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;




--Deliverable 1 part 3
--Get number of employees by most recent job title who are about to retire
SELECT COUNT (title),
title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;



--Deliverable 3
--Create a mentorship eligibility table with employees born in 1965
SELECT DISTINCT ON (emp_no) employees.emp_no, 
first_name, 
last_name, 
birth_date, 
dept_emp.from_date, 
dept_emp.to_date, 
title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE dept_emp.to_date = ('9999-01-01')
AND employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no ASC;