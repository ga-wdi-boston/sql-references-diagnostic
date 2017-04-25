-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(doctor_id, patient_id, appt_date, appt_time, comment)
VALUES

  (6, 5, '2016-08-17', '13:00:00', 'gross'),
  (6, 8, '2016-08-12', '10:00:00', 'severe IBS'),
  (4, 8, '2016-08-12', '10:0:00', 'serious case of the munchies'),
  (4, 7, '2016-08-17','13:00:00', 'insurance fraud');
