-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(day, patient_id, doctor_id, start)
  SELECT '2016-08-12', p.id, d.id, '10am'
  FROM doctors d, patients p
    WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '19490828'
  UNION
  SELECT '2016-08-17', p.id, d.id, '1pm'
  FROM doctors d
    INNER JOIN patients p
    ON  d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
    AND p.born_on = '19750617';

  INSERT INTO appointments(day, patient_id, doctor_id, start)
    SELECT '2016-08-12', p.id, d.id, '10am'
    FROM doctors d, patients p
      WHERE d.given_name = 'Spencer'
      AND d.surname = 'Hubbard'
      AND p.given_name = 'Marsha'
      AND p.surname = 'Wilcox'
      AND p.born_on = '19490828'
    UNION
    SELECT '2016-08-17', p.id, d.id, '1pm'
    FROM doctors d
      INNER JOIN patients p
      ON  d.given_name = 'Vicky'
      AND d.surname = 'Hilton'
      AND p.given_name = 'Blake'
      AND p.surname = 'Hodge'
      AND p.born_on = '19601022';
