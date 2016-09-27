-- insert appointments creating connections between doctors and patients
-- patients(surname,given_name,gender,born_on,insurance
-- doctors(surname,given_name,gender,born_on,specialty)


-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-12', 10am, d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.comment = 'none'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  -- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
  SELECT TIMESTAMP '2016-08-17', 1pm, d.id, p.id
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.comment = 'none'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  -- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
  SELECT TIMESTAMP '2016-08-12', 10am, d.id, p.id
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.comment = 'none'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  -- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
  SELECT TIMESTAMP '2016-08-17', 1pm, d.id, p.id
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.comment = 'none'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
  UNION
;
