-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(full_name, start_at, patient_id, doctor_id)
SELECT DATE '2016-08-12', p.id, d.id
FROM patients AS p, doctors AS d
WHERE p.full_name = 'Marsha Wilcox'
AND d.full_name = 'Vicky Hilton'
UNION
SELECT '2016-08-17', p.id, d.id
FROM patients AS p
  INNER JOIN doctors AS d
  ON p.full_name = 'Ivory Talley'
  AND d.full_name = 'Spencer Hubbard'
  ;
