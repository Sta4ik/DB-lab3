/* Задание 1 */

SELECT


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
GROUP BY FACULTY.id, FACULTY.faculty_name;

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
WHERE YEAR(STUD.br_date) = '2015'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 7 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE YEAR(STUD.br_date) = '2014'
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 8 */

SELECT FACULTY.id, FACULTY.faculty_name FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE FORM.form_name = 'Заочная'

/* Задание JOIN 9 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, HOURS.course FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id