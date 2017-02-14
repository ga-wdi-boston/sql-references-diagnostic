-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (date, time, patient_id, doctor_id)
  SELECT DATE '2016-08-16', TIME '10:00', p.id, d.id
  FROM patients as p, doctors as d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
UNION
  SELECT DATE '2016-08-17', TIME '13:00', p.id, d.id
  FROM patients as p, doctors as d
  WHERE p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
  UNION
    SELECT DATE '2016-08-12', TIME '10:00', p.id, d.id
    FROM patients as p, doctors as d
    WHERE p.family_name = 'Wilcox'
      AND p.given_name = 'Marsha'
      AND d.family_name = 'Hubbard'
      AND d.given_name = 'Spencer'
UNION
SELECT DATE '2016-08-16', TIME '13:00', p.id, d.id
FROM patients as p, doctors as d
WHERE p.family_name = 'Hodge'
  AND p.given_name = 'Blake'
  AND d.family_name = 'Hilton'
  AND d.given_name = 'Vicky'
;
