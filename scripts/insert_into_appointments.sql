-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date,time,comment,doctor,patient)
VALUES
('August 12, 2016','10am',null, 4, 8),
('August 17, 2016','1pm',null, 6, 5),
('August 12, 2016','10am',null, 6, 8),
('August 17, 2016','1pm',null, 4, 7);
