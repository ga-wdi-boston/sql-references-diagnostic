-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, doctor_id, patient_id) VALUES
SELECT '20160812', '1000',
  SELECT id FROM doctors WHERE surname = 'Hilton'
  SELECT id FROM patients WHERE surname = 'Wilcox'
UNION
SELECT '20160817', '1300',
  SELECT id FROM doctors WHERE surname = 'Hubbard'
  SELECT id FROM patients WHERE surname = 'Talley'
UNION
SELECT '20160817', '1000',
  SELECT id FROM doctors WHERE surname = 'Hubbard'
  SELECT id FROM patients WHERE surname = 'Wilcox'
UNION
SELECT '20160817', '1300',
  SELECT id FROM doctors WHERE surname = 'Hilton'
  SELECT id FROM patients WHERE surname = 'Hodge'
