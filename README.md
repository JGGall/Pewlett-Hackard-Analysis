# Pewlett-Hackard Analysis

## 1. Overview
### *An explanation of the purpose of the analysis*
Pewlett-Hackard is a giant technology corporation with a correspondingly large number of employees. With about 300,000 past and present employees in the corporation's records, those in human resources need information about how many employees are likely to retire in the near future. They also need to develop a mentorship program in order to train the next generation, and so those in human resources also want to know which employees are about ten years away from retirement.

## 2. Results
### *The analysis I performed using PostgreSQL leads me to make the following points:*
- An enormous number of employees are likely to retire very soon. The first deliverable resulted in three different CSV files, the first of which  is not very useful because employees who held multiple titles over the years are included multiple times. The second file reveals what Pewlett-Hackard is actually facing: 90,397 employees are between the ages of 66 and 69.

- The third CSV file from the first deliverable is very concise, breaking down the 90,398 soon-to-be-retiring Pewlett-Hackard employees by current title. These consist of more than 29,000 senior engineers, more than 28,000 senior staff, more than 14,000 engineers, more than 12,000 staff, around 4,500 technique leaders, more than 1700 assistant engineers, and 2 managers.

![retiring_titles.png] (url)

- The second deliverable resulted in a CSV file as well. It contains the 1,549 employees who turn 56 years old in 2021, and who are eligible for a mentorship program.

![code for del_2] (url)

- The same mentorship eligibility CSV file contains employee names, numbers, birth dates, current titles and the date on which each employee was hired or promoted to that title, so that file should prove valuable for those who are developing a mentorship program.

## 3. Summary
### *Looking Ahead*
1. **How many roles will need to be filled as the "silver tsunami" begins to make and impact?**
No one can look at a birth date or at a list of ages and know who is really about to retire, since employees can choose to retire very early or stay on longer. But if all of the present positions are retained in the coming years, and everyone retires by age 70, then Pewlett-Hackard will have to fill more than 90,000 positions in the next four years.


2. **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
The present analysis does not provide me with enough information to assess whether or not there are enough employees to run an effective mentorship program in the coming years. The fourth CSV file--the file on mentorship eligibility--contains the 1,549 employees who are about 56. But of what use it that? It is the employees who are in their mid-60s who should be mentoring those far younger than 56 years of age. But if those in charge of human resources believe that those who are 56 should be mentored by those who are 66 or older, there are plenty of the older cohort to mentor the younger cohort.

### *Additional Queries*
#### I would suggest performing some more analysis by means of queries that would:
- Produce counts and also complete tables of employees who are 45 years of age or more, separated by age. The company need to look far ahead into the future to develop an adequate mentorship program.
- Produce tables of employees who have served in their present departments for more than ten years, as they would be able to serve in mentoring roles without having to wait until they are within five or ten years of retirement to do so.

