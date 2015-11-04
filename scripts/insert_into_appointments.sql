-- insert appointments creating connections between doctors and patients
--   + Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
--   + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
--   + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
--   + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(patient_id, doctor_id, time, date)
  VALUES (8,4,'10:00:00', '2016-08-12'),
         (5,6,'13:00:00', '2016-08-17'),
         (8,6,'10:00:00', '2016-08-12'),
         (7,4,'13:00:00', '2016-08-17');
