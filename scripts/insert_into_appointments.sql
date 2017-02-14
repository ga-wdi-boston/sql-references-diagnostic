-- insert appointments creating connections between doctors and patients

INSERT INTO appointments( doctor_id, patient_id, time, date)
  SELECT d.id, p.id, '10am', '2016-08-12'
  FROM doctors d, patients p
    WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    --
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT d.id, p.id, '1pm', '2016-08-17'
  FROM doctors d, patients p
    WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    --
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  SELECT d.id, p.id, '10am', '2016-08-12'
  FROM doctors d, patients p
    WHERE d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    --
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT d.id, p.id, '1pm', '2016-08-17'
  FROM doctors d, patients p
    WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    --
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
