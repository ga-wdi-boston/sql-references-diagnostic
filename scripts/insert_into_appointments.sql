-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (appt_date, start, patient_id, doctor_id)
  SELECT '20160812', '10am', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT '20160817', '1pm', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  SELECT '20160812', '10am', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.specialty = 'Dermatology'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT '20160812', '10am', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.specialty = 'Internal Medicine'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge';
