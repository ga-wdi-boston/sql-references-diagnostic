-- insert appointments creating connections between doctors and patients
### Question 3

-- Create the following appointments by inserting
--  the appropriate rows into the appointments table.
-- Save your code in `insert_into_appointments.sql`:
--
-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(day,start,comments,doctor_name,patient_name) VALUES
  ('August 12, 2016', '10am', 'Has cough', 'Dr. Vicky Hilton', 'Marsha Wilcox')
  ('August 17, 2016', '1pm', 'Upset stomach', 'Dr. Spencer Hubbard', 'Marsha Wilcox')
  ('August 12, 2016', '10am', 'headaches', 'Dr. Vicky Hilton', 'Marsha Wilcox')
  ('August 17, 2016', '1pm', 'back pain', 'Dr. Spencer Hubbard', 'Marsha Wilcox')
