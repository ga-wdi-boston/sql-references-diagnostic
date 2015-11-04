-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(time, date_of_appointment, comment, doctor_id, patient_id)
VALUES ('10am', 'August 12, 2016', '', 4, 8),
       ('1pm', 'August 17, 2016', '', 6, 5),
       ('10am', 'August 12, 2016', '', 6, 8),
       ('1pm', 'August 17, 2016', '', 4, 7)
