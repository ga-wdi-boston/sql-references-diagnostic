-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT p.surname, p.given_name, a.time, a.date
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard';

SELECT d.surname, d.given_name, a.time, a.date
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox';
