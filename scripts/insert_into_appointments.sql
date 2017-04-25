-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, appt_time, patient_id, doctor_id) VALUES
  ('2016-08-12', '10:00:00', 8, 4),
  ('2016-08-17', '13:00:00', 5, 6),
  ('2016-08-12', '10:00:00', 8, 6),
  ('2016-08-17', '13:00:00', 7, 4);
