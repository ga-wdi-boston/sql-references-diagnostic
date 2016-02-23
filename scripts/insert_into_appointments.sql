-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date_of, time_of, doctor_id, patient_id)
  SELECT '20150812', '1000',
    (SELECT id FROM doctors WHERE surname = 'Hilton'),
    (SELECT id FROM patients WHERE surname = 'Wilcox')

INSERT INTO appointments(date_of, time_of, doctor_id, patient_id)
  SELECT '20150817', '1300',
    (SELECT id FROM doctors WHERE surname = 'Hubbard'),
    (SELECT id FROM patients WHERE surname = 'Tally')

INSERT INTO appointments(date_of, time_of, doctor_id, patient_id)
  SELECT '20150812', '1000',
    (SELECT id FROM doctors WHERE surname = 'Hubbard'),
    (SELECT id FROM patients WHERE surname = 'Wilcox')

INSERT INTO appointments(date_of, time_of, doctor_id, patient_id)
  SELECT '20150812', '1300',
    (SELECT id FROM doctors WHERE surname = 'Hilton'),
    (SELECT id FROM patients WHERE surname = 'Hodge')
