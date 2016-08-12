-- retrieve appointment information
--
-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard. Then, write another to retrieve the Doctors' names and appointment times for Marsha Wilcox. Save your code in scripts/select_appointments.sql.

SELECT p.surname, p.given_name, a.date_app, a.time_app, d.surname, d.specialty
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
WHERE d.surname = 'Hubbard';
