-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date_on, time_on, doctor_id, patient_id)VALUES
 (DATE '2016-Aug-12',TIME '10:00', 2, 3),
 (DATE '2016-Aug-17',TIME '13:00'),  3, 4,
 (DATE '2016-Aug-12',TIME '10:00', ),
 (DATE '2016-Aug-17',TIME '13:00');
