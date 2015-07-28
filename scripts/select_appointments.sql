-- retrieve appointment information

SELECT p.surname, p.given_name, a.date, a.time
FROM doctors d
INNER JOIN appointments a
  ON d.id = a.doctor_id
INNER JOIN patients p
  ON p.id = a.patient_id
WHERE d.surname = 'Hubbard';

SELECT d.surname, d.given_name, a.date, a.time
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON d.id = a.doctor_id
WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha';
