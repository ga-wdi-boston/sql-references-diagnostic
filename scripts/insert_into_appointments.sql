-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, time, comment, doctor_id, patient_id)
  SELECT 'August 12, 2015', '10am', '',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vickie'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
;

INSERT INTO appointments(appt_date, time, comment, doctor_id, patient_id)
  SELECT 'August 17, 2015', '1pm', '',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory')
;

INSERT INTO appointments(appt_date, time, comment, doctor_id, patient_id)
  SELECT 'August 12, 2015', '10am', '',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
;

INSERT INTO appointments(appt_date, time, comment, doctor_id, patient_id)
  SELECT 'August 17, 2015', '1pm', '',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vickie'),
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake')
;
