-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
VALUES('20160812', '10am', 'Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016', 4, 8);

INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
VALUES('20160817', '1pm', 'Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016', 6, 5);

INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
VALUES('20160812', '10am', 'Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016', 6, 8);

INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
VALUES('20160817', '1pm', 'Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016', 4, 7);
