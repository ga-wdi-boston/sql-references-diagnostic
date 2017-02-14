-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(start_at, length, patient_id, doctor_id)
  SELECT TIMESTAMP '2016-08-12 10:00', p.id, d.id
    FROM patients AS p, doctors AS d
    WHERE p.family_name = 'Wilcox '
      AND p.given_name = 'Marsha'
      AND d.given_name = 'Vicky'
      AND d.family_name = 'Hilton'
  UNION
  SELECT '2016-08-17 13:00', p.id, d.id
  FROM patients AS p
    INNER JOIN doctors AS d
      ON p.family_name = 'Talley '
      AND p.given_name = 'Ivory'
      AND d.given_name = 'Hubbard'
      AND d.family_name = 'Spencer'
;
