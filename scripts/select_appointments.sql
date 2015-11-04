-- retrieve appointment information
SELECT p.given_name, d.surname, a.appointment_time
FROM patients p
INNER JOIN doctors d
  ON d.doctor_id = d.id
INNER JOIN appointments a
  ON a.appointment_id = a.id
WHERE d.surname = 'Hubbard'
;

SELECT p.given_name, d.surname, a.appointment_time
FROM patients p
INNER JOIN doctors d
  ON d.doctor_id = d.id
INNER JOIN appointments a
  ON a.appointment_id = a.id
WHERE p.given_name = 'Marsha Wilcox'
;
