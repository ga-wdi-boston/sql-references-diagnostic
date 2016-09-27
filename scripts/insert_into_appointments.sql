-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (date, time, doctor_id, patient_id)
SELECT '20150812'
   (SELECT id FROM doctors WHERE surname = 'Hilton'),
   (SELECT id FROM patients WHERE surname = 'Wilcox')
 UNION
