-- insert appointments creating connections between doctors and patients

-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
INSERT into appointments(date, time, comment)
SELECT 'August 12, 2016', '10am', 'seeing Dr. Vicky Hilton'
FROM patients
WHERE surname = 'Wilcox' AND given_name = 'Marsha';

-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
INSERT into appointments(date, time, comment)
SELECT 'August 17, 2016', '1pm', ' seeing Dr. Spencer Hubbard'
FROM patients
WHERE surname = 'Talley' AND given_name = 'Ivory';

-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
INSERT into appointments(date, time, comment)
SELECT 'August 12, 2016', '10am', 'seeing Dr. Spencer Hubbard'
FROM patients
WHERE surname = 'Wilcox' AND given_name = 'Marsha';

-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
INSERT into appointments(date, time, comment)
SELECT 'August 17, 2016', '1pm',  'seeing Dr. Vicky Hilton'
FROM patients
WHERE surname = 'Hodge' AND given_name = 'Blake;'
