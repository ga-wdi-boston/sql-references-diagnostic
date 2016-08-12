-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(start_date, start_time, comment,doctor_id,patient_id) VALUES
  ('August 12, 2016', '10am', 4, 8),
  ('August 17, 2016', '1pm', 6, 5),
  ('August 12, 2016', '10am', 5, 8),
  ('August 17, 2016', '1pm', 4, 7);
