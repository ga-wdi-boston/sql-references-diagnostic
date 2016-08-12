-- insert appointments creating connections between doctors and patients
-- Create the following appointments by inserting the appropriate rows into the
-- appointments table. Save your code in insert_into_appointments.sql:
--
-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(app_date,app_time,comment,patient_id,doctor_id) VALUES
('2016-08-12','10:00','no comment',id,id),
('2016-08-17','13:00','no comment',id,id),
('2016-08-12','10:00','no comment',id,id),
('2016-08-17','13:00','no comment',id,id);
