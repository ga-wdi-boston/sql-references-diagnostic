-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, doctor_id, patient_id)
  VALUES ('2016-08-12','10:00 am', 4, 8),
         ('2016-08-17','1:00 pm', 6, 5),
         ('2016-08-17','10:00 am', 6, 8),
         ('2016-08-17','1:00 pm', 6, 4)
;
