-- retrieve appointment information
SELECT p.surname, p.given_name, appointment_date, time
FROM patients AS p
INNER JOIN appointments as a
 on a.patient_id = p.id
INNER JOIN doctors as d
  on a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

SELECT d.surname, d.given_name, appointment_date, time
FROM patients AS p
INNER JOIN appointments as a
 on a.patient_id = p.id
INNER JOIN doctors as d
  on a.doctor_id = d.id
WHERE p.given_name = 'Marsha' and p.surname = 'Wilcox'
;
