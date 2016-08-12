-- retrieve appointment information
SELECT d.surname, p.surname, a.start_date, a.start_time
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
  WHERE d.surname IN ('Hubbard');

SELECT d.surname, p.surname, a.start_date, a.start_time
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
  WHERE p.surname IN ('Wilcox');
