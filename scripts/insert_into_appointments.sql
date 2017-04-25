-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(patient_id, doctor_id, appt_date, appt_time, comments) VALUES
  (9,5, '2016-08-12', 10:00),
  (6,7, '2016-08-17', 13:00),
  (9,7,'2016-08-12', 10:00),
  (8,5,'2016-08-12', 13:09);
