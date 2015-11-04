-- insert appointments creating connections between doctors and patients
-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- MW id = 8,  DR VH = 4
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
--  IT =   5  Dr SH = 6
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
--  MW id = 8 DR SH = 6
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
--  BH = 7   Dr VH = 4


INSERT INTO appointments(appointment_date, appointment_time, comments, doctor_id, patient_id)
  VALUES ('2016-08-12', '10AM' 'Routine Exam', 4, 8),
          ('2016-17-12', '1PM' 'Mamo', 6, 5),
          ('2016-08-12', '10AM' 'Hip pain', 6, 8),
          ('2016-08-12', '1PM' 'Physical', 4, 7)
          ;
