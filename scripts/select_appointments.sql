-- retrieve appointment information
-- - Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.
--   + Save your code in `scripts/select_appointments.sql`.

SELECT p.surname, p.given_name, d.specialty, d.surname, a.time, a.date
  FROM appointments a
  INNER JOIN patients p
    ON p.id = a.patient_id
  INNER JOIN doctors d
    ON d.id = a.doctor_id
  WHERE d.surname = 'Hubbard' AND d.given_name = 'Spencer';

SELECT p.surname, p.given_name, d.surname, a.time, a.date
  FROM appointments a
  INNER JOIN patients p
    ON p.id = a.patient_id
  INNER JOIN doctors d
    ON d.id = a.doctor_id
  WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha';
