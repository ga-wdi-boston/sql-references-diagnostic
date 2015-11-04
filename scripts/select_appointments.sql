-- retrieve appointment information
--Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT p.given_name, p.surname, a.time
FROM appointments a
INNER JOIN patients
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id

WHERE d.appointment = 'Hubbard'
;

SELECT d.surname, p.given_name, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id

WHERE p.surname = 'Wilcox'
AND p.given_name = 'Marsha'
;
