-- insert appointments creating connections between doctors and patients


INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
  VALUES ('2016-08-12', '10:00', 5, 9),
         ('2016-08-17', '13:00', 7, 6),
         ('2016-08-12', '10:00', 7, 9),
         ('2016-08-17', '13:00', 5, 8)
;


