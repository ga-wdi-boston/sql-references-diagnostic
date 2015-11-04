-- insert appointments creating connections between doctors and patients




  SELECT 10am, 'August 12, 2016', 'New Appt',
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky')
  UNION
    SELECT 1pm, 'August 17, 2016', 'New Appt',
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer')
    UNION



    SELECT 10am, 'August 12, 2016', 'New Appt',
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer')
    UNION

     SELECT 1pm, 'August 17, 2016', 'New Appt',
    (SELECT id
      FROM patients
      WHERE surname = 'Hodge'
      AND given_name = 'Blake'),
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky')
