-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(surname, given_name, gender dob, insurance,appt_id, doctor_id)
SELECT 'August 12, 2016', '10am', '',
  (SELECT id
    FROM patients
    WHERE surname = 'Wilcox'
    AND given_name = 'Marsha'),
  (SELECT id
   FROM doctors
    WHERE surname = 'Hilton'
    AND given_name = 'Vicky');

 SELECT 'August 17, 2016', '1pm', '',
  (SELECT id
    FROM patients
    WHERE surname = 'Talley'
    AND given_name = 'Ivory'),
  (SELECT id
   FROM doctors
    WHERE surname = 'Hubbard'
    AND given_name = 'Spencer');

  SELECT 'August 12, 2016', '10am', '',
  (SELECT id
    FROM patients
    WHERE surname = 'Wilcox'
    AND given_name = 'Marsha'),
  (SELECT id
   FROM doctors
    WHERE surname = 'Hubbard'
    AND given_name = 'Spencer');

  SELECT 'August 17, 2016', '1pm', '',
  (SELECT id
    FROM patients
    WHERE surname = 'Hodge'
    AND given_name = 'Blake'),
  (SELECT id
   FROM doctors
    WHERE surname = 'Hilton'
    AND given_name = 'Vicky');
