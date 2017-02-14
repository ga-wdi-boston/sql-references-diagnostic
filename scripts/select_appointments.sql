-- retrieve appointment information
SELECT p.given_name, p.surname, a.time
FROM appointments a
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE a.doctor_id = 6
ORDER BY p.surname;

SELECT d.given_name, d.surname, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE a.patient_id = 8
ORDER BY d.surname;
