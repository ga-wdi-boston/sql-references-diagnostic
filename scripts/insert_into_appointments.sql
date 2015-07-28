-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date TEXT, time TEXT, comment TEXT, doctor_id, patient_id)
VALUES('20150812', '10 AM', 'Marsha Wilcox seeing Dr. Vicky Hilton', 4, 8);

INSERT INTO appointments(date TEXT, time TEXT, comment TEXT, doctor_id, patient_id)
VALUES('20150817', '1 PM', 'Ivory Talley seeing Dr. Spencer Hubbard', 6, 5);

INSERT INTO appointments(date TEXT, time TEXT, comment TEXT, doctor_id, patient_id)
VALUES('20150812', '10 AM', 'Marsha Wilcox seeing Dr. Spencer Hubbard', 6, 8);

INSERT INTO appointments(date TEXT, time TEXT, comment TEXT, doctor_id, patient_id)
VALUES('20150817', '1 PM', 'Blake Hodge seeing Dr. Vicky Hilton', 4, 7);
