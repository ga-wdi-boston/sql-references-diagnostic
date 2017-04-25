-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, comment, doctor_id, patient_id) VALUES
  ('2016-08-12', '10:00:00', null, 4, 8),
  ('2016-08-17', '13:00:00', null, 6, 5),
  ('2016-08-12', '10:00:00', null, 6, 8),
  ('2016-08-17', '13:00:00', null, 4, 7)

;
