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
WHERE YEAR(STUD.in_date) = 2015
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание JOIN 7 */

SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE YEAR(STUD.in_date) = 2014
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
GROUP BY FACULTY.id, FACULTY.faculty_name, FORM.form_name

/* Задание JOIN 15 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE DATEDIFF(YEAR, STUD.br_date, GETDATE()) < 27
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course, FORM.form_name

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
WHERE FORM.form_name = 'Заочная'
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
GROUP BY FACULTY.id, FACULTY.faculty_name, FORM.form_name
HAVING MIN(STUD.exm) > 6

/* Задание SELECT 7 */

SELECT STUD.id, STUD.f_name, STUD.s_name, STUD.last_name, HOURS.course, FORM.form_name,(HOURS.all_h - HOURS.inclass_h) as time FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE FACULTY.faculty_name = 'ФПК' AND HOURS.course = 3 AND FORM.form_name = 'Заочная'

/* Задание SELECT 8 */

SELECT FACULTY.faculty_name, HOURS.course, FORM.form_name, (HOURS.all_h - HOURS.inclass_h) as time FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN FORM ON HOURS.form_id = FORM.id
JOIN PROCESS ON HOURS.id = PROCESS.hours_id
JOIN STUD ON PROCESS.stud_id = STUD.id
WHERE (HOURS.all_h - HOURS.inclass_h) > 150
GROUP BY FACULTY.faculty_name, HOURS.course, FORM.form_name, (HOURS.all_h - HOURS.inclass_h)

/* Задание SELECT 9 */

SELECT TEACH.id, TEACH.last_name, TEACH.f_name, TEACH.s_name, COUNT(SUBJ.id) as SUBJECT FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
GROUP BY TEACH.id, TEACH.last_name, TEACH.f_name, TEACH.s_name

/* Задание SELECT 10 */

SELECT FACULTY.id, FACULTY.faculty_name, COUNT(DISTINCT TEACH.id) as teachers FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN WORK ON HOURS.id = WORK.hours_id
JOIN TEACH ON WORK.teach_id = TEACH.id
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание SELECT 11 */

SELECT SUBJ.id, SUBJ.subj, MAX(HOURS.all_h) FROM SUBJ
JOIN WORK ON SUBJ.id = WORK.subj_id
JOIN HOURS ON WORK.hours_id = HOURS.id
GROUP BY SUBJ.id, SUBJ.subj

/* Задание SELECT 12 */

SELECT TEACH.id, TEACH.last_name, TEACH.f_name, TEACH.s_name, COUNT(DISTINCT SUBJ.id) as subject FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
GROUP BY TEACH.id, TEACH.last_name, TEACH.f_name, TEACH.s_name
HAVING COUNT(DISTINCT SUBJ.id) > 1

/* Задание SELECT 13 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, SUM(SUBJ.hours) as hours FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN WORK ON HOURS.id = WORK.hours_id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course

/* Задание SELECT 14 */

SELECT FACULTY.id, FACULTY.faculty_name, HOURS.course, COUNT(DISTINCT SUBJ.id) as subject FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN WORK ON HOURS.id = WORK.hours_id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
WHERE HOURS.course = 2
GROUP BY FACULTY.id, FACULTY.faculty_name, HOURS.course
ORDER BY FACULTY.faculty_name DESC, HOURS.course ASC

/* Задание SELECT 15 */

SELECT FACULTY.id, FACULTY.faculty_name, COUNT(DISTINCT SUBJ.id) as subject FROM FACULTY
JOIN HOURS ON FACULTY.id = HOURS.faculty_id
JOIN WORK ON HOURS.id = WORK.hours_id
JOIN TEACH ON WORK.teach_id = TEACH.id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
WHERE TEACH.last_name IS NULL OR TEACH.last_name = ''
GROUP BY FACULTY.id, FACULTY.faculty_name

/* Задание подзапрос 1 */

SELECT STUD.id, STUD.f_name, STUD.s_name, STUD.last_name, STUD.exm FROM STUD
WHERE STUD.exm <= (SELECT MAX(STUD.exm) * 0.8 FROM STUD)

/* Задание подзапрос 2 */

SELECT STUD.id, STUD.f_name, STUD.s_name, STUD.last_name, STUD.exm FROM STUD
WHERE STUD.exm = (SELECT MAX(STUD.exm) FROM STUD)

/* Задание подзапрос 3 */

SELECT STUD.last_name FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE FACULTY.id = ( SELECT TOP 1 FACULTY.id
                     FROM FACULTY
                     JOIN HOURS ON FACULTY.id = HOURS.faculty_id
                     JOIN PROCESS ON HOURS.id = PROCESS.hours_id
                     JOIN STUD ON PROCESS.stud_id = STUD.id
                     GROUP BY FACULTY.id
                     ORDER BY COUNT(STUD.id) DESC )

/* Задание подзапрос 4 */

SELECT DISTINCT STUD.id, STUD.s_name, STUD.f_name, STUD.last_name, FACULTY.faculty_name, HOURS.course, FORM.form_name FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE NOT EXISTS (
	SELECT 1 FROM PROCESS P2
	JOIN HOURS H2 ON P2.hours_id = H2.id
	JOIN STUD S2 ON P2.stud_id = S2.id
	WHERE H2.faculty_id = HOURS.faculty_id
	AND H2.course = HOURS.course
	AND H2.form_id = FORM.id
	AND (S2.last_name IS NULL OR S2.last_name = '')
)

/* Задание подзапрос 5 */

SELECT DISTINCT STUD.id, STUD.s_name, STUD.f_name, STUD.last_name, HOURS.course
FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
WHERE HOURS.course = (
	SELECT DISTINCT H2.course
	FROM STUD S2
	JOIN PROCESS P2 ON S2.id = P2.stud_id
	JOIN HOURS H2 ON P2.hours_id = H2.id
	WHERE S2.s_name = 'Ботяновский'
) AND STUD.s_name != 'Ботяновский'

/* Задание подзапрос 6 */

SELECT DISTINCT STUD.id, STUD.s_name, STUD.f_name, STUD.last_name
FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
WHERE HOURS.course IN (
	SELECT H2.course
	FROM STUD S2
	JOIN PROCESS P2 ON S2.id = P2.stud_id
	JOIN HOURS H2 ON P2.hours_id = H2.id
	WHERE S2.s_name = 'Зингель'
		INTERSECT
	SELECT H3.course
	FROM STUD S3
	JOIN PROCESS P3 ON S3.id = P3.stud_id
	JOIN HOURS H3 ON P3.hours_id = H3.id
	WHERE S3.s_name = 'Зайцева' )
AND STUD.s_name NOT IN ('Зингель', 'Зайцева')

/* Задание подзапрос 7 */

SELECT DISTINCT STUD.id, STUD.s_name, STUD.f_name, STUD.last_name, FACULTY.faculty_name, HOURS.course, FORM.form_name FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
JOIN FORM ON HOURS.form_id = FORM.id
WHERE (
	SELECT COUNT(DISTINCT S2.id)
	FROM PROCESS P2
	JOIN HOURS H2 ON P2.hours_id = H2.id
	JOIN STUD S2 ON P2.stud_id = S2.id
	WHERE H2.faculty_id = HOURS.faculty_id
	AND H2.course = HOURS.course
	AND H2.form_id = FORM.id
	AND (S2.last_name IS NULL OR S2.last_name = '')) > 1

/* Задание подзапрос 8 */

SELECT DISTINCT STUD.id, STUD.s_name, STUD.f_name, STUD.last_name, FACULTY.faculty_name,HOURS.course, ( SELECT COUNT(DISTINCT S2.id) FROM PROCESS P2
																										JOIN HOURS H2 ON P2.hours_id = H2.id
																										JOIN STUD S2 ON P2.stud_id = S2.id
																										WHERE H2.faculty_id = HOURS.faculty_id
																										AND H2.course = HOURS.course) FROM STUD
JOIN PROCESS ON STUD.id = PROCESS.stud_id
JOIN HOURS ON PROCESS.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE STUD.last_name IS NULL OR STUD.last_name = ''

/* Задание UNION 1 */

SELECT TEACH.id, TEACH.s_name, TEACH.f_name, TEACH.last_name, SUM(SUBJ.hours),
       CASE 
           WHEN SUM(SUBJ.hours) >= 450 THEN '20%'
           WHEN SUM(SUBJ.hours) >= 300 THEN '10%'
           ELSE '0%'
       END 
FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN SUBJ ON WORK.subj_id = SUBJ.id
GROUP BY TEACH.id, TEACH.s_name, TEACH.f_name, TEACH.last_name

/* Задание UNION 2 */

SELECT STUD.s_name, IIF(STUD.last_name IS NULL OR STUD.last_name = '', 'Иностранное', 'РБ') FROM STUD
GROUP BY STUD.s_name, STUD.last_name
UNION
SELECT TEACH.s_name, IIF(TEACH.last_name IS NULL OR TEACH.last_name = '', 'Иностранное', 'РБ') FROM TEACH
GROUP BY TEACH.s_name, TEACH.last_name

/* Задание UNION 3 */

SELECT TEACH.id, TEACH.f_name, TEACH.s_name, TEACH.last_name FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN HOURS ON WORK.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE FACULTY.faculty_name = 'ФПК'
	INTERSECT
SELECT TEACH.id, TEACH.f_name, TEACH.s_name, TEACH.last_name FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN HOURS ON WORK.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE FACULTY.faculty_name = 'ФПМ'

/* Задание UNION 4 */

SELECT TEACH.id, TEACH.f_name, TEACH.s_name, TEACH.last_name FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN HOURS ON WORK.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE FACULTY.faculty_name = 'ФПК'
	EXCEPT
SELECT TEACH.id, TEACH.f_name, TEACH.s_name, TEACH.last_name FROM TEACH
JOIN WORK ON TEACH.id = WORK.teach_id
JOIN HOURS ON WORK.hours_id = HOURS.id
JOIN FACULTY ON HOURS.faculty_id = FACULTY.id
WHERE FACULTY.faculty_name = 'ФПМ'

/* Задание UNION 5 */

SELECT 'Студентов', COUNT(STUD.id) FROM STUD
UNION
SELECT 'Преподавателей', COUNT(TEACH.id) FROM TEACH
UNION
SELECT 'Всего человек', ((SELECT COUNT(STUD.id) FROM STUD) + (SELECT COUNT(TEACH.id) FROM TEACH))

/* Задание VIEW 1 */

CREATE VIEW FPKSTUD AS
	SELECT STUD.last_name, STUD.f_name, STUD.s_name, HOURS.course, FORM.form_name FROM STUD
	JOIN PROCESS ON PROCESS.stud_id = STUD.id
	JOIN HOURS ON HOURS.id = PROCESS.hours_id
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	JOIN FORM ON FORM.id = HOURS.form_id
	WHERE FACULTY.faculty_name = 'ФПК'


CREATE VIEW HOURSZAO AS
	SELECT FACULTY.faculty_name, HOURS.course, HOURS.all_h FROM HOURS
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	JOIN FORM ON FORM.id = HOURS.form_id
	WHERE FORM.form_name = 'Заочная'
	GROUP BY FACULTY.faculty_name, HOURS.course, HOURS.all_h

CREATE VIEW STUDMORE8 AS
SELECT FACULTY.faculty_name, HOURS.course, FORM.form_name, COUNT(STUD.id) FROM STUD
	JOIN PROCESS ON PROCESS.stud_id = STUD.id
	JOIN HOURS ON HOURS.id = PROCESS.hours_id
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	JOIN FORM ON FORM.id = HOURS.form_id
	WHERE STUD.exm > 8
	GROUP BY FACULTY.faculty_name, HOURS.course, FORM.form_name

CREATE VIEW STUDLESS6 AS
SELECT STUD.f_name, STUD.s_name, STUD.last_name, FACULTY.faculty_name, HOURS.course, FORM.form_name, STUD.exm FROM STUD
	JOIN PROCESS ON PROCESS.stud_id = STUD.id
	JOIN HOURS ON HOURS.id = PROCESS.hours_id
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	JOIN FORM ON FORM.id = HOURS.form_id
	WHERE STUD.exm < 6
	GROUP BY STUD.f_name, STUD.s_name, STUD.last_name, FACULTY.faculty_name, HOURS.course, FORM.form_name

/* Задание VIEW 2
Все созданные view являются только для чтения, так как модифицирующие как минимум создаются из одной базовой таблицы без JOIN */

/* Задание по функциям 1 */

GO
CREATE FUNCTION ForeignerInfo(@last_name NVARCHAR(30))
	RETURNS NVARCHAR(20)
AS
BEGIN
	IF (@last_name IS NULL OR @last_name = '')
		RETURN 'Иностранец'
	ELSE
		RETURN 'Гражданин'
END
GO

/* Задание по функциям 2 */

GO
CREATE FUNCTION HoursTeach()
	RETURNS TABLE
AS
RETURN (SELECT TEACH.last_name, SUM(SUBJ.hours) FROM WORK
			JOIN TEACH ON TEACH.id = WORK.teach_id
			JOIN SUBJ ON SUBJ.id = WORK.subj_id
			GROUP BY TEACH.last_name )
GO

/* Задание по процедурам 1 */

GO
CREATE PROCEDURE AmountStud @faculty_name NVARCHAR(10), @form_name NVARCHAR(15)
AS
BEGIN
	SELECT FACULTY.id, FACULTY.faculty_name, FORM.form_name, COUNT(STUD.id) FROM FACULTY 
	JOIN HOURS ON FACULTY.id = HOURS.faculty_id
	JOIN PROCESS ON HOURS.id = PROCESS.hours_id
	JOIN STUD ON PROCESS.stud_id = STUD.id
	JOIN FORM ON HOURS.form_id = FORM.id
	WHERE FORM.form_name = @form_name AND FACULTY.faculty_name = @faculty_name
	GROUP BY FACULTY.id, FACULTY.faculty_name, FORM.form_name
END
GO

/* Задание по процедурам 2 */

CREATE PROCEDURE CountSubject
AS
BEGIN
    DECLARE @fpkCount INT, @fpmCount INT, @totalCount INT, @sameCount INT
	
	SELECT @fpkCount = COUNT(DISTINCT SUBJ.id) FROM SUBJ
	JOIN WORK ON WORK.subj_id = SUBJ.id
	JOIN HOURS ON HOURS.id = WORK.hours_id
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	WHERE FACULTY.faculty_name = 'ФПК'

	SELECT @fpmCount = COUNT(DISTINCT SUBJ.id) FROM SUBJ
	JOIN WORK ON WORK.subj_id = SUBJ.id
	JOIN HOURS ON HOURS.id = WORK.hours_id
	JOIN FACULTY ON FACULTY.id = HOURS.faculty_id
	WHERE FACULTY.faculty_name = 'ФПМ'

	SELECT @totalCount = COUNT(DISTINCT SUBJ.id) FROM SUBJ
	JOIN WORK ON WORK.subj_id = SUBJ.id
	JOIN HOURS ON HOURS.id = WORK.hours_id

	SELECT @sameCount = COUNT(DISTINCT s1.id) FROM SUBJ s1
	WHERE EXISTS (SELECT 1 FROM WORK w1
                  JOIN HOURS h1 ON h1.id = w1.hours_id
                  JOIN FACULTY f1 ON f1.id = h1.faculty_id
                  WHERE w1.subj_id = s1.id AND f1.faculty_name = 'ФПК')
      AND EXISTS (SELECT 1 FROM WORK w2
                  JOIN HOURS h2 ON h2.id = w2.hours_id
                  JOIN FACULTY f2 ON f2.id = h2.faculty_id
                  WHERE w2.subj_id = s1.id AND f2.faculty_name = 'ФПМ')
    PRINT('Для ФПК читается ' + CONVERT(NVARCHAR, @fpkCount) + ' предметов, для ФПМ читается ' + CONVERT(NVARCHAR, @fpmCount) + ' предметов, всего ' + CONVERT(NVARCHAR, @totalCount) + ' предметов (' + CONVERT(NVARCHAR, @sameCount) + ' из которых идентичны)')
END