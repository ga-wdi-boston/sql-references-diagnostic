-- retrieve appointment information
-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to retrieve the Doctors' names and appointment times for Marsha
-- Wilcox. Save your code in scripts/select_appointments.sql.
SELECT p.given_name, p.surname, a.time
  FROM patients p
  INNER JOIN appointments a ON a.patient_id = p.id
    WHERE a.doctor_id = 6
;
SELECT p.given_name, p.surname, a.time
  FROM patients p
  INNER JOIN appointments a ON a.patient_id = p.id
    WHERE a.patient_id = 8
;
