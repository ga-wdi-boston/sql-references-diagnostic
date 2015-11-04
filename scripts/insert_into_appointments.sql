-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, time, comment, patient_id, doctor_id)
VALUES('2016-08-12', '10am',, 8, 4),
      ('2016-08-17', '1pm',, 5, 6),
      ('2016-08-12', '10am',, 8, 6),
      ('2016-08-17', '1pm',, 7, 4)

-- Can't remember if inputting a blank perameter is ,, or ,'',.  I put what I remembered from the funky people data in one of his examples which was the double comma.
