-- insert appointments creating connections between doctors and patients

-   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
INSERT INTO appointments(date, time, doctor_id, patients_id, notes)
SELECT '2016-08-12', '1pm', d.id, p.id
FROM doctor d, patients p
  WH
