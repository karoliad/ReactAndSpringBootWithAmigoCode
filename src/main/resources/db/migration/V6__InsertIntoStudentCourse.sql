INSERT INTO student_course(
			student_id,
			course_id,
			start_date,
			end_date)
VALUES(
	'4012ec65-5f73-4f04-8208-ca118dbf5c0e',
	'394c46e2-5e0c-4038-9bd9-3b0280e51e8c',
	NOW()::DATE,
	(NOW() + INTERVAL '1 YEAR')::DATE)
;


INSERT INTO student_course(
			student_id,
			course_id,
			start_date,
			end_date)
VALUES(
	'582a23c4-86fb-4416-be51-36630935948d',
	'd971c92b-99ba-448b-9804-f3550852e087',
	NOW()::DATE,
	(NOW() + INTERVAL '1 YEAR')::DATE)
;

INSERT INTO student_course(
			student_id,
			course_id,
			start_date,
			end_date)
VALUES(
	'c6057d4d-d407-49a9-9c71-815f525bdaab',
	'ae7e6e04-b6d0-44bd-9408-add4381850f0',
	NOW()::DATE,
	(NOW() + INTERVAL '1 YEAR')::DATE)
;