-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(day, appt_time, doctor_id, patient_id)
  SELECT 'August 12, 2016', '10am', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT 'August 17, 2016', '1pm', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
  UNION
  SELECT 'August 12, 2016', '10am', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT 'August 17, 2016', '1pm', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
;
