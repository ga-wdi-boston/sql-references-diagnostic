-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(patient_id, doctor_id, appointent_time, appointment_date)
VALUES (8, 4, '10am', 'August 12, 2016'), (5, 6, '1pm', 'August 17, 2016'),
       (8, 6, '10am', 'August 12, 2016'), (7, 4, '1pm', 'August 17, 2016')
