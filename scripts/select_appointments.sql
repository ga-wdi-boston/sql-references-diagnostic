-- retrieve appointment information

-- Write a query to retrieve the names and appointment times for everyone seeing
-- Dr. Hubbard

SELECT p.surname, p.given_name, a.day_on, a.time_at
FROM appointments as a
INNER JOIN doctors as d
ON d.id = a.doctor_id
INNER JOIN patients as p
ON p.id = a.patient_id
WHERE d.surname = 'Hubbard';

-- Then, write another to retrieve the Doctors' names and appointment times for
-- Marsha Wilcox

SELECT d.surname, d.given_name, a.day_on, a.time_at
FROM appointments as a
INNER JOIN doctors as d
ON d.id = a.doctor_id
INNER JOIN patients as p
ON p.id = a.patient_id
WHERE p.surname = 'Wilcox';
