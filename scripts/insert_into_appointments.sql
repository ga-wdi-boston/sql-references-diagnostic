-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, appt_time, doctor_id, patient_id)
  SELECT DATE '2016-08-12', TIME '10:00', dr.id, pt.id
  FROM patients pt, doctors dr ,appointments appt
  WHERE pt.given_name = 'Marsha'
    AND pt.family_name = 'Wilcox'
    AND dr.given_name = 'Vicky'
    AND dr.family_name = 'Hilton'
  UNION
  SELECT DATE '2016-08-17', TIME '13:00', dr.id, pt.id
  FROM patients pt, doctors dr ,appointments appt
  WHERE pt.given_name = 'Ivory'
    AND pt.family_name = 'Talley'
    AND dr.given_name = 'Spencer'
    AND dr.family_name = 'Hubbard'
    UNION
    SELECT DATE '2016-08-12', TIME '10:00', dr.id, pt.id
    FROM patients pt, doctors dr ,appointments appt
    WHERE pt.given_name = 'Marsha'
      AND pt.family_name = 'Wilcox'
      AND dr.given_name = 'Spencer'
      AND dr.family_name = 'Hubbard'
      UNION
      SELECT DATE '2016-08-17', TIME '13:00', dr.id, pt.id
      FROM patients pt, doctors dr ,appointments appt
      WHERE pt.given_name = 'Blake'
        AND pt.family_name = 'Hodge'
        AND dr.given_name = 'Vicky'
        AND dr.family_name = 'Hilton'
  ;
;
