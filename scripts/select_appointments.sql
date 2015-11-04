-- retrieve appointment information

-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard
SELECT p.surname, p.given_name, a.date_of, a.time
FROM patients p
INNER JOIN appointment a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
AND d.given_name = 'Spencer'
;

-- Retrieve the Doctors' names and appointment times for Marsha Wilcox
SELECT d.surname, d.given_name, a.date_of, a.time
FROM doctors d
INNER JOIN appointment a
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox'
AND p.given_name = 'Martha'
;
