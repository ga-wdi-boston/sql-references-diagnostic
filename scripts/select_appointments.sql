-- retrieve appointment information
-- - Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.
--   + Save your code in `scripts/select_appointments.sql`.

SELECT p.surname, p.given_name, a.time
  FROM doctors d
  INNER JOIN appointments a
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON p.id = a.patient_id
  WHERE d.surname = 'Hubbard';

SELECT d.surname, d.given_name, a.time
  FROM doctors d
  INNER JOIN appointments a
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON p.id = a.patient_id
  WHERE p.surname = 'Wilcox';
