-- retrieve appointment information
-- Names and appointment times for everyone seeing Dr. Hubbard
SELECT
p.given_name,
p.family_name,
a.appt_date,
a.appt_time,
d.family_name as doctor_family_name
FROM patients p
LEFT JOIN appointments a
  ON a.patient_id = p.id
LEFT JOIN doctors d
  on a.doctor_id = d.id
WHERE d.family_name = 'Hubbard';

-- Doctors' names and appointment times for Marsha Wilcox
SELECT
d.given_name,
d.family_name,
a.appt_date,
a.appt_time,
p.family_name as patient_family_name
FROM doctors d
LEFT JOIN appointments a
  ON a.doctor_id = d.id
LEFT JOIN patients p
  on a.patient_id = p.id
WHERE p.family_name = 'Wilcox';
