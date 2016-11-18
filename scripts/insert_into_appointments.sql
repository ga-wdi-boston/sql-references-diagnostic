-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, patient_id, doctor_id) VALUES
('August 12, 2016', '10am', 'no comment', 8, 4),
('August 17, 2016', '1pm', 'no comment', 5, 6),
('August 12, 2016', '10am', 'no comment', 8, 6),
('August 17, 2016', '1pm', 'no comment', 7, 4);
