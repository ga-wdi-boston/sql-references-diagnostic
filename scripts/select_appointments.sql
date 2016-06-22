-- retrieve appointment information

-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard.
SELECT
p.surname,
p.given_name,
a.time
FROM appointments a, patients p, doctors d
WHERE a.patient_id = p.id
  AND a.doctor_id = d.id
  AND d.id = 6;

-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.
SELECT
d.surname,
d.given_name,
a.time
FROM appointments a, patients p, doctors d
WHERE a.patient_id = p.id
  AND a.doctor_id = d.id
  AND p.id = 8;
