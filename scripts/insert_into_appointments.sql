-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, patient_id)
  SELECT TIMESTAMP '2016-09-22 11:30', 20, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Allergy and immunology'
    AND d.given_name = 'Randal'
    AND d.surname = 'Sloan'

    AND p.given_name = 'Lela'
    AND p.surname = 'Cannon'
    AND p.born_on = '1980-10-22'
  UNION
  SELECT TIMESTAMP '2016-10-10  08:30', 20, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Helga'
    AND d.surname = 'Akers'

    AND p.given_name = 'Alba'
    AND p.surname = 'Slater'
    AND p.born_on = '1960-09-13'
;


-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
