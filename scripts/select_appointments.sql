-- retrieve appointment information
SELECT p.surname, p.given_name, a.time
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON d.id = a.doctor_id
WHERE d.surname = 'Hubbard'
AND d.given_name = 'Spencer';

SELECT d.surname, d.given_name, a.time
FROM doctors d
INNER JOIN patients p
  ON p.id = a.patient_id
INNER JOIN appointments a
  ON d.id = a.doctor_id
WHERE p.surname = 'Wilcox'
AND p.given_name = 'Marsha';


-- SELECT p.surname, p.given_name, s.language, s.framework, e.years_experience
-- FROM people p
-- INNER JOIN endorsements e
--   ON p.id = e.person_id
-- INNER JOIN skills s
--   ON e.skill_id = s.id
-- WHERE language = 'Ruby'
