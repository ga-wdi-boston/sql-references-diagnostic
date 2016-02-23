-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(patient_id, doctor_id, time, date)
(SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
(SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Wilxcox'),
SELECT '10am', 'August 12, 2016'

UNION

(SELECT id FROM patients WHERE)
