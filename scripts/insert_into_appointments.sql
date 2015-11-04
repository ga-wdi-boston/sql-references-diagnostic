-- insert appointments creating connections between doctors and patients

-- Question 3. Create the following appointments by inserting the appropriate rows into the appointments table. Save your code in `insert_into_appointments.sql`:
  --+ Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
  --+ Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
  --+ Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
  --+ Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
INSERT INTO appointments(patient_id, doctor_id, time, date)
  VALUES (9, 5, 1009, 2016-08-12),
          (6, 7, 1300, 2016-08-17),
          (9, 7, 1000, 2016-08-12),
          (8, 5, 1009, 2016-08-12)
;
