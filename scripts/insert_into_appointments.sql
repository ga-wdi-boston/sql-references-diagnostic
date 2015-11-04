-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
VALUES('August 12, 2016', '10am', 'Marsha Wilcox seeing Dr. Vicky Hilton', 4, 8),
      ('August 17, 2016', '1pm', 'Ivory Talley seeing Dr. Spencer Hubbard', 6, 5),
      ('August 12, 2016', '10am', 'Marsha Wilcox seeing Dr. Spencer Hubbard', 6, 8),
      ('August 17, 2016', '1pm', 'Blake Hodge seeing Dr. Vicky Hilton', 4, 7)
;

