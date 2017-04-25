-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date,time,comment,patient_id,doctor_id) VALUES
  ('2016-08-12', '10:00 AM','Marsha Wilcox seeing Dr. Vicky Hilton',8, 4),
  ('2016-08-17', '1:00 PM','Ivory Talley seeing Dr. Spencer Hubbard',5, 6),
  ('2016-08-12', '10:00 AM','Marsha Wilcox seeing Dr. Spencer Hubbard',8, 6),
  ('2016-08-17', '1:00 PM','Marsha Wilcox seeing Dr. Vicky Hilton',7, 4);
