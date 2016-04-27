-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(appointment_date,appointment_time,comment,patient,doctor)
VALUES
(8-12-2016, '10am', 'cancer?', 'Marsha Wilcox', 'Dr. Vicky Hilton'),
(8-17-2016, '1pm', 'pain', 'Ivory Talley', 'Dr. Spencer Hubbard' );
(8-12-2016, '10am', 'definitely cancer', 'Marsha Wilcox','Dr. Vicky Hilton');
(8-17-2016, '1pm', 'does this look weird?','Blake Hodge', 'Dr. Spencer Hubbard');


-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
