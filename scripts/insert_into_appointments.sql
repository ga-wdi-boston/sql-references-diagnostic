-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appointment_date,appointment_time,comment,patient_id,doctor_id) VALUES
  ('2016-08-12', '10:00:00','Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016',8,4),
  ('2016-08-17','13:00:00','Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016',5,6),
  ('2016-08-12','10:00:00','Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016',8,6),
  ('2016-08-17','13:00:00','Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016',7,4)
