-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date,time,comment,doctor_id,patient_id)
  SELECT 'August 12, 2016', '10am', '',
  (SELECT id
    FROM doctors
    WHERE surname = 'Hilton'
    AND given_name = 'Vicky'),
  (SELECT id
    FROM patients
    WHERE surname = 'Wilcox'
    AND given_name = 'Marsha')
UNION
  SELECT 'August 17, 2016', '1pm', '',
  (SELECT id
    FROM doctors
    WHERE surname = 'Hubbard'
    AND given_name = 'Spencer'),
  (SELECT id
    FROM patients
    WHERE surname = 'Talley'
    AND given_name = 'Ivory')
UNION
  SELECT 'August 12, 2016', '1Oam', '',
  (SELECT id
    FROM doctors
    WHERE surname = 'Hubbard'
    AND given_name = 'Spencer'),
  (SELECT id
    FROM patients
    WHERE surname = 'Wilcox'
    AND given_name = 'Marsha')
UNION
  SELECT 'August 17, 2016', '1pm', '',
  (SELECT id
    FROM doctors
    WHERE surname = 'Hilton'
    AND given_name = 'Vicky'),
  (SELECT id
    FROM patients
    WHERE surname = 'Hodge'
    AND given_name = 'Blake')
;
