-- retrieve appointment information
SELECT d.surname doctor, p.surname last_name, p.given_name patient_first_name, a.on_date, a.start_time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE d.surname = 'Hubbard';

SELECT p.surname patient, p.given_name patient_first_name, d.surname doctor, a.on_date, a.start_time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha';
