-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(day_scheduled, time_scheduled, with_doctor, for_patient, comments)
VALUES('August 12, 2016', '10am', 'Dr. Vickie Hilton','Marsha Wilcox', 'Marsha Wilcox seeing Dr. Vicky Hilton'),
      ('August 17, 2016', '1pm', 'Dr. Spencer Hubbard','Ivory Talley','Ivory Talley seeing Dr. Spencer Hubbard'),
      ('August 12, 2016', '10am', 'Dr. Spencer Hubbard', 'Marsha Wilcox','Marsha Wilcox seeing Dr. Spencer Hubbard'),
      ('August 17, 2016', '1pm', 'Dr. Vickie Hilton','Blake Hodge', 'Blake Hodge seeing Dr. Vicky Hilton')
;
