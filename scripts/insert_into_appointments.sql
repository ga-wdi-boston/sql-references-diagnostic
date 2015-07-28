-- insert appointments creating connections between doctors and patients
 -- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2015.
 --  + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2015.
 --  + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2015.
 --  + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2015.

INSERT INTO appointments (date, time, doctor_id, patient_id)
 SELECT 'Aug 12', '10am',
 (SELECT id FROM doctors WHERE surname = 'Hilton'),
 (SELECT id FROM patients Where given_name = 'Wilcox')
UNION
 SELECT 'Aug 17', '1pm',
 (SELECT id FROM doctors WHERE surname = 'Hubbard'),
 (SELECT id FROM patients Where given_name = 'Talley')
UNION
 SELECT 'Aug 12', '10am',
 (SELECT id FROM doctors WHERE surname = 'Hubbard'),
 (SELECT id FROM patients Where given_name = 'Wilcox')
UNION
 SELECT 'Aug 17', '1am',
 (SELECT id FROM doctors WHERE surname = 'Hodge'),
 (SELECT id FROM patients Where given_name = 'Hilton')
