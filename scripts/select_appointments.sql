-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- SELECT d.surname, d.given_name, c.name, c.country, j.start_date, j.end_date
-- FROM developers d
-- INNER JOIN jobs j
--   ON d.id = j.developer_id
-- INNER JOIN companies c
--   ON j.company_id = c.id
-- WHERE c.name = 'HP'
-- AND j.start_date = '20150913';

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
