-- insert appointments creating connections between doctors and patients

-- Create the following appointments by inserting the appropriate rows into the
-- appointments table. Save your code in `insert_into_appointments.sql`:
--
-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

-- Since Ive no tables created in pSQL, Here i assume that the doctor_id for Dr. Hilton is 1 and the patient Id for Wilcox is 2:
INSERT INTO appointments (appt_date, appt_time, comments, doctor_id, patient_id ) VALUES ('2016-08-12', '10AM', 'Marsha Wilcox seeing Dr. Vicky Hilton', 1, 2);

-- Since Ive no tables created in pSQL, Here i assume that the doctor_id for Dr. Hubbard is 2 and the patient Id for Talley is 3:
INSERT INTO appointments (appt_date, appt_time, comments, doctor_id, patient_id ) VALUES ('2016-08-17', '1PM', 'Ivory Talley seeing Dr. Spencer Hubbard', 2, 3);


-- Since Ive no tables created in pSQL, Here i assume that the doctor_id for Dr. Hubbard is 2 and the patient Id for Wilcox is 2:
INSERT INTO appointments (appt_date, appt_time, comments, doctor_id, patient_id ) VALUES ('2016-08-12', '10AM', 'Marsha Wilcox seeing Dr. Spencer Hubbard', 2, 2);


-- Since Ive no tables created in pSQL, Here i assume that the doctor_id for Dr. Hilton is 1 and the patient Id for Hodge is 4:
INSERT INTO appointments (appt_date, appt_time, comments, doctor_id, patient_id ) VALUES ('2016-08-17', '1PM', 'Blake Hodge seeing Dr. Vicky Hilton', 1, 4);
