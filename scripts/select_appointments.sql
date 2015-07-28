-- retrieve appointment information
SELECT p.surname, p.given_name
FROM patients p
INNER JOIN appointments a
	ON p.id = a.patient_id
WHERE a.doctor_id =  6;

SELECT d.surname, d.given_name
FROM doctors d
INNER JOIN appointments a
	ON d.id = a.patient_id
WHERE a.patient_id = 8;

-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard.
--
-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- SELECT p.surname, p.given_name
-- FROM people p
-- INNER JOIN endorsements e
-- 	ON p.id = e.person_id
-- INNER JOIN skills s
-- 	ON e.skill_id = s.id
-- WHERE language = 'Ruby'
-- AND e.years_experience > 2
-- ;
--
-- SELECT s.language, s.framework, e.years_experience
-- FROM skills s
-- INNER JOIN endorsements e
-- 	ON s.id = e.skill_id
-- INNER JOIN people p
-- 	ON e.person_id = p.id
-- WHERE p.surname = 'Walden'
-- AND p.given_name = 'Kirby'
-- ;
