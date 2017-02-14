-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(start_at, length, patient_id, doctor_id)
  SELECT TIMESTAMP '2016-08-14 10:00', p.is, p.id
  FROM patients AS p, doctors AS d
  where p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'

  UNION
  SELECT '2017-08-12 10:00', p.id, d.id
  FROM patients AS p
    INNER JOIN doctors as d
      ON p.family_name = 'Wilcox'
        AND p.given_name = 'Marsha'
        AND d.family_name = 'Hubbard'
        AND d.given_name = 'Spencer'


INSERT INTO appointments(start_at, length, patient_id, doctor_id)
  SELECT TIMESTAMP '2016-08-17 01:00', p.is, p.id
  FROM patients AS p, doctors AS d
  where p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'pencer'



  INSERT INTO appointments(start_at, length, patient_id, doctor_id)
    SELECT TIMESTAMP '2016-08-17 01:00', p.is, p.id
    FROM patients AS p, doctors AS d
    where p.family_name = 'Hodge'
      AND p.given_name = 'Blake'
      AND d.family_name = 'Hilton'
      AND d.given_name = 'Vicky'
