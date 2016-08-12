-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(appt_date, appt_time, patient_id, doctor_id) VALUES
  ('August 12, 2016', '10am', 8, 4),
  ('August 17, 2016', '1pm', 5, 6),
  ('August 12, 2016', '10am', 8, 6),
  ('August 17, 2016', '1pm', 7, 4);
