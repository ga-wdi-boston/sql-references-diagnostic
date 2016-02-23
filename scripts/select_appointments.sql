-- retrieve appointment information
SELECT p.given_name, p.surname
  FROM appointments a
  INNER JOIN patients p ON a.patient_id = p.id
  INNER JOIN doctors d ON a.doctor_id = d.id
    WHERE a.doctor_id = (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer')
;

SELECT d.given_name, d.surname
  FROM appointments a
  INNER JOIN patients p ON a.patient_id = p.id
  INNER JOIN doctors d ON a.doctor_id = d.id
    WHERE a.patient_id = (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
;
