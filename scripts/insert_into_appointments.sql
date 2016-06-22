-- insert appointments creating connections between doctors and patients

-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016
INSERT INTO appointments(day_on, time_at, doctor_id, patient_id)
VALUES('20160812', '10:00', 4, 8 );

-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016
INSERT INTO appointments(day_on, time_at, doctor_id, patient_id)
VALUES('20160817', '13:00', 6, 5 );

-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016
INSERT INTO appointments(day_on, time_at, doctor_id, patient_id)
VALUES('20160812', '10:00', 6, 8 );

-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016
INSERT INTO appointments(day_on, time_at, doctor_id, patient_id)
VALUES('20160817', '13:00', 4, 7 );
