-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, d_family_name, d_given_name, p_family_name, p_given_name) VALUES
  (10am, '2016-08-12', ' seeing Dr. ', 'Hilton', 'Vicky', 'Wilcox', 'Marsha'),
  (1pm, '2016-08-17', ' seeing Dr. ', 'Hubbard', 'Spencer', 'Talley', 'Ivory'),
  (10am, '2016-08-12', ' seeing Dr. ', 'Hubbard', 'Spencer', 'Wilcox', 'Marsha'),
  (1pm, '2016-08-17', ' seeing Dr. ', 'Hilton', 'Vicky', 'Hodge', 'Blake');



-   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
