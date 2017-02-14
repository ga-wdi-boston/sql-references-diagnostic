-- insert appointments creating connections between doctors and patients


INSERT INTO appointments(date, time, patient_id, doctor_id)
SELECT DATE '2016-08-12', TIME '10:00', p.id, d.id
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
UNION
SELECT '2016-08-17', '13:00', p.id, d.id
FROM patients AS p
  INNER JOIN doctors as d
  ON p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
UNION

  ;


-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
