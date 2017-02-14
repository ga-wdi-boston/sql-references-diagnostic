-- insert appointments creating connections between doctors and patients
--   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
--   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
--   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
--   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
INSERT INTO appointments(start, length, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-12 10:00', 30, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '1949-08-28'
  UNION
  SELECT TIMESTAMP '2016-08-17 01:00', 30, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
    AND p.born_on = '1975-06-17'
  UNION
  SELECT TIMESTAMP '2016-08-12 10:00', 30, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '1949-08-28'
  UNION
  SELECT TIMESTAMP '2016-08-17 01:00', 30, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
    AND p.born_on = '1960-10-22'
    ;
