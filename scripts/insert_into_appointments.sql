-- insert appointments creating connections between doctors and patients

INSERT INTO appointments (appointment_date,appointment_time,comment,patient_id,doctor_id)
  SELECT '2016-08-12', '10:00', 'none' p.id, d.id
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
  UNION
  SELECT '2016-08-17', '13:00', 'none', p.id, d.id
  FROM patients as p
    INNER JOIN doctors AS d
      ON p.family_name = 'Talley'
        AND p.given_name = 'Ivory'
        AND d.family_name = 'Hubbard'
        AND d.given_name = 'Spencer'
  UNION
  SELECT '2016-08-12', '10:00', 'none', p.id, d.id
  FROM patients as p
    INNER JOIN doctors AS d
      ON p.family_name = 'Wilcox'
        AND p.given_name = 'Marsha'
        AND d.family_name = 'Hubbard'
        AND d.given_name = 'Spencer'
  UNION
  SELECT '2016-08-17', '13:00', 'none', p.id, d.id
  FROM patients as p
    INNER JOIN doctors AS d
      ON p.family_name = 'Hodge'
        AND p.given_name = 'Blake'
        AND d.family_name = 'Hilton'
        AND d.given_name = 'Vicky'
;
