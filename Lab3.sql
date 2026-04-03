/* Задание JOIN 1 */

SELECT STUD.f_name, STUD.last_name, STUD.s_name, STUD.br_date, STUD.in_date, STUD.exm, HOURS.course, FACULTY.faculty_name FROM PROCESS 
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE FORM.form_name='Заочная' AND (DATEDIFF(YEAR, STUD.br_date, GETDATE()) < 37)

/* Задание JOIN 2 */

SELECT FACULTY.id, FACULTY.faculty_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 3 */

SELECT FORM.id, FORM.form_name, COUNT(STUD.id) FROM FORM
JOIN HOURS ON FORM.id = HOURS.form_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FORM.id, FORM.form_name

/* Задание JOIN 4 */

SELECT FACULTY.id, FACULTY.faculty_name, AVG(DATEDIFF(YEAR, STUD.br_date, GETDATE())) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 5 */

SELECT STUD.f_name, STUD.last_name, STUD.s_name, STUD.in_date, HOURS.course, FACULTY.faculty_name, FORM.form_name FROM PROCESS
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE STUD.last_name IS NULL OR STUD.last_name = ''

/* Задание JOIN 6 */

SELECT TOP 1 FACULTY.id, FACULTY.faculty_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE YEAR(STUD.in_date) = '2015'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 7 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE YEAR(STUD.in_date) = '2014'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 8 */

SELECT FACULTY.id, FACULTY.faculty_name FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE FORM.form_name = 'Заочная'

/* Задание JOIN 9 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, HOURS.course FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN FORM ON HOURS.form_id = FORM.id

/* Задание JOIN 10 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name, FORM.form_name

/* Задание JOIN 11 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name, FORM.form_name, HOURS.course


/* Задание JOIN 12 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE STUD.last_name IS NULL OR STUD.last_name = ''
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course	

/* Задание JOIN 13 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE STUD.exm > 7.5
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course

/* Задание JOIN 14 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE DATEDIFF(YEAR, STUD.br_date, GETDATE()) > 45
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 15 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE DATEDIFF(YEAR, STUD.br_date, GETDATE()) < 27
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 16 */

SELECT FACULTY.id, FACULTY.faculty_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE STUD.f_name LIKE 'С%'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание SELECT 1 */

SELECT FACULTY.id, FACULTY.faculty_name, AVG(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE FORM.form_name='Заочная'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание SELECT 2 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, MAX(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course

/* Задание SELECT 3 */

SELECT FACULTY.id, FACULTY.faculty_name, AVG(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name
HAVING AVG(STUD.exm) > 7

/* Задание SELECT 4 */

SELECT HOURS.course, FACULTY.faculty_name, AVG(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course
HAVING AVG(STUD.exm) > 7.5

/* Задание SELECT 5 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, MIN(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course

/* Задание SELECT 6 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, MIN(STUD.exm) FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
JOIN FORM ON HOURS.form_id = FORM.id
GROUP BY FACULTY.id, FACULTY.faculty_name
HAVING MIN(STUD.exm) > 6

/* Задание SELECT 7 */

