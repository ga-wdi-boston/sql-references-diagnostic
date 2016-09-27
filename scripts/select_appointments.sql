-- retrieve appointment information
-- Write a query to retrieve the names and appointment times for everyone seeing
-- Dr. Hubbard. Then, write another to retrieve the Doctors' names and appointment
-- times for Marsha Wilcox.

-- example from training:
-- SELECT d.surname, d.specialty, p.surname, a.start, a.length
-- FROM appointments a
--   INNER JOIN doctors d
--     ON a.doctor_id = d.id
--   INNER JOIN patients p
--     ON a.patient_id = p.id
--   ;

SELECT p.given_name, p.surname, a.start_date, a.start_time
FROM appointments a
  INNER JOIN patients p
    ON a.doctor_id = d.id
WHERE a.doctor_id = 6
;

SELECT d.given_name, d.surname, a.start_date, a.start_time
FROM appointments a
  INNER JOIN doctors d
    ON a.patient_id = 8
;
