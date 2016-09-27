-- retrieve appointment information
-- everyone seeing Dr. Hubbard
SELECT d.surname doctor, d.specialty, p.surname patient, a.date, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id  = d.id
WHERE d.surname='Hubbard'
INNER JOIN patients p
  ON a.patient_id = p.id
;

-- appointments for patient marsha wilcox
SELECT d.surname doctor, d.specialty, p.surname patient, a.date, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id  = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname='Wilcox'
;
