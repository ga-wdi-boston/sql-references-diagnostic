-- retrieve appointment information

-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard.

SELECT p.given_name, p.surname, a.time
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT d.given_name, d.surname, a.time
FROM doctors d
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN patients p
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox'
;
