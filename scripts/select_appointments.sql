-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard. Retrieve the Doctors' names and appointment times for Marsha Wilcox.



SELECT p.surname, p.given_name, p.appointment_time, p.appointment_date
FROM patients p
INNER JOIN appointments a
  ON e.skill_id = s.id
INNER JOIN doctors d
  ON e.person_id = p.id
WHERE p.surname = 'Worley'
;

SELECT s.framework, s.language
FROM skills s
INNER JOIN endorsements e
  ON e.skill_id = s.id
INNER JOIN people p
  ON e.person_id = p.id
WHERE p.surname = 'Worley'
;
