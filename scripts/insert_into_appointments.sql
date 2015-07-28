-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comments, patient_id, doctor_id)
  SELECT ('08122015','1000', 'N/A')
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
    (SELECT id FROM doctors WHERE surname = 'Hilton')
