-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, patients_id, doctors_id)
VALUES('August 12, 2016', '10am', 'Blue Shield', '9', '5');

INSERT INTO appointments(date, time, comment, patients_id, doctors_id)
VALUES('August 17, 2016', '1pm', 'Blue Cross', '6', '7');

INSERT INTO appointments(date, time, comment, patients_id, doctors_id)
VALUES('August 12, 2016', '1pm', 'Blue Shield', '9', '7');

INSERT INTO appointments(date, time, comment, patients_id, doctors_id)
VALUES('August 17, 2016', '1pm', 'Blue Shield', '8', '5');
