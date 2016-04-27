-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, patient_id, doctor_id)
  VALUES ('August 12, 2016', '10am', 'sick', 8, 4);
INSERT INTO appointments(date, time, comment, patient_id, doctor_id)
  VALUES ('August 17, 2016', '1pm', 'sicker', 5, 6);
INSERT INTO appointments(date, time, comment, patient_id, doctor_id)
  VALUES ('August 12, 2016', '10am', 'sick', 8, 6);
INSERT INTO appointments(date, time, comment, patient_id, doctor_id)
  VALUES ('August 17, 2016', '1pm', 'almost dead', 7, 4);
