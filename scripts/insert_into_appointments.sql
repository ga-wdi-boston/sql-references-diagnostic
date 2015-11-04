-- insert appointments creating connections between doctors and patients
-- Question 3. Create the following appointments by inserting the appropriate rows into the appointments table. Save your code in insert_into_appointments.sql:
-- Marsha Wilcox (ID 8) seeing Dr. Vicky Hilton (ID 4) at 10am on August 12, 2016.
-- Ivory Talley (ID 5) seeing Dr. Spencer Hubbard (ID 6) at 1pm on August 17, 2016.
-- Marsha Wilcox (ID 8) seeing Dr. Spencer Hubbard (ID 6) at 10am on August 12, 2016.
-- Blake Hodge (ID 7) seeing Dr. Vicky Hilton (ID 4) at 1pm on August 17, 2016.
insert into appointments(appt_date, appt_time, comment, doctor_id, patient_id)
  values ('2016-08-12', '10 am', 'X-ray broken arm', 4, 8),
         ('2016-08-17', '1 pm', 'Follow up on cough', 6, 5),
         ('2016-08-12', '10 am', 'Follow up on broken arm', 6, 8),
         ('2016-08-17', '1 pm', 'Yearly physical', 4, 7)
;
