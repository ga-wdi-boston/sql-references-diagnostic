-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date,time,comment, doctor_id, patient_id) VALUES
  ('2016-08-12', '10am', '', '4', '8'),
  ('2016-08-17', '1pm', '', '6', '5'),
  ('2016-08-12', '10am', '', '6', '8'),
  ('2016-08-17', '1pm', '', '4', '7');
