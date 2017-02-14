-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
  SELECT '2016-08-12', '10:00', 'Internal Medicine appt', d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT '2016-08-17', '13:00', 'Dermatology appt', d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  SELECT '2016-08-12', '10:00', 'Dermatology appt', d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT '2016-08-17', '13:00', 'Internal Medicine appt', d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
    ;
