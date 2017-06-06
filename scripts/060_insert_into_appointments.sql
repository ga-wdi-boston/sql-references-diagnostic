-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(on_date, start_time, comments, doctor_id, patient_id)
  '2016-08-12',
  '10:00',
  SELECT id
    FROM patients
    WHERE family_name = 'Wilcox' AND given_name = 'Marsha',
  SELECT id FROM doctors
    WHERE family_name = 'Hubbary' AND given_name = 'Spencer'
;
