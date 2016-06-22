-- insert appointments creating connections between doctors and patients
--
-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, comment) VALUES (4, 8, '2016-08-12', '10:00 am', )

INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, comment) VALUES (6, 5, '2016-08-17', '1:00 pm', )

INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, comment) VALUES (6, 8, '2016-08-12', '10:00 am', )

INSERT INTO appointments (doctor_id, patient_id, appointment_date, appointment_time, comment) VALUES (4, 7, '2016-08-17', '1:00 pm', )
