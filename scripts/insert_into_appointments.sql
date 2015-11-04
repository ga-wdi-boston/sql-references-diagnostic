-- insert appointments creating connections between doctors and patients

-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT 'August 12, 2016', '10am'
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky')
;

-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT 'August 17, 2016', '1pm'
    (SELECT id
      FROM patients
      WHERE surname = 'Talley'
      AND given_name = 'Ivory'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer')
;

-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT 'August 12, 2016', '10am'
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer')
;

-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT 'August 17, 2016', '1pm'
    (SELECT id
      FROM patients
      WHERE surname = 'Hodge'
      AND given_name = 'Blake'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky')
;
