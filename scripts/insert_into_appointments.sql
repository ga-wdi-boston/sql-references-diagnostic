-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appointment_date, appointment_time, comments, doctor_id, patient_id)
  SELECT TEXT 'August 12, 2016', '10am', 'Just a check-up', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
UNION
  SELECT TEXT 'August 17, 2016', '1pm', 'Just a check-up', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
UNION
  SELECT TEXT 'August 12, 2016', '10am', 'Just a check-up', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
UNION
  SELECT TEXT 'August 12, 2016', '1pm', 'Just a check-up', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
;
