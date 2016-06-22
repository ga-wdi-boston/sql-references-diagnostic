-- retrieve appointment information

-- retrieve the names and appointment times for everyone seeing Dr. Hubbard.
SELECT
  p.given_name, p.surname,
  a.appointment_date, a.appointment_time
FROM appointments AS a
INNER JOIN patients AS p
  ON p.id = a.patient_id
INNER JOIN doctors AS d
  ON d.id = a.doctor_id
WHERE d.surname = 'Hubbard';

-- retrieve the Doctors' names and appointment times for Marsha Wilcox.
SELECT
  d.given_name, d.surname,
  a.appointment_date, a.appointment_time
FROM appointments AS a
INNER JOIN patients AS p
  ON p.id = a.patient_id
INNER JOIN doctors AS d
  ON d.id = a.doctor_id
WHERE p.surname = 'Wilcox';
