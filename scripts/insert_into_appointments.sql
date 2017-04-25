-- insert appointments creating connections between doctors and patients

-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(apt_date, apt_time, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-12' '10:00', d.id, p.id
  FROM doctors d, patients p
    WHERE d.family_name = 'Hilton'
      AND d.given_name = 'Vicky'
      AND p.family_name = 'Wilcox'
      AND p.given_name = 'Marsha'
  UNION
  SELECT TIMESTAMP '2016-08-17' '13:00', d.id, p.id
  FROM doctors d, patients p
    WHERE d.family_name = 'Hubbard'
      AND d.given_name = 'Spencer'
      AND p.family_name = 'Talley'
      AND p.given_name = 'Ivory'
  UNION
  SELECT TIMESTAMP '2016-08-12' '10:00', d.id, p.id
  FROM doctors d, patients p
    WHERE d.family_name = 'Hubbard'
      AND d.given_name = 'Spencer'
      AND p.family_name = 'Wilcox'
      AND p.given_name = 'Marsha'
  UNION
  SELECT TIMESTAMP '2016-08-17' '13:00', d.id, p.id
  FROM doctors d, patients p
    WHERE d.family_name = 'Hilton'
      AND d.given_name = 'Vicky'
      AND p.family_name = 'Hodge'
      AND p.given_name = 'Blake';
