-- insert appointments creating connections between doctors and patients

-- Marsha Wilcox seeing Dr. Vickie Hilton at 10am on August 12, 2016.
INSERT INTO appointments(appt_date, appt_time, comment, patient_id, doctor_id)
VALUES('2016-08-12', '10:00 AM', 8, 4);

-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
INSERT INTO appointments(appt_date, appt_time, comment, patient_id, doctor_id)
VALUES('2016-08-17', '01:00 PM', 5, 6);

-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
INSERT INTO appointments(appt_date, appt_time, comment, patient_id, doctor_id)
VALUES('2016-08-12', '10:00 AM', 8, 6);

-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
