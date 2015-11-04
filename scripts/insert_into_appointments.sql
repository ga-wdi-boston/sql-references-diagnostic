-- insert appointments creating connections between doctors and patients
insert into appointments(patient_id, doctor_id, date, time, comment)
  values (8, 4,'August 12, 2016', '10am', ''),
          (5, 6, 'August 17, 2016', '1pm', ''),
          (8, 6, 'August 12, 2016', '10am', ''),
          (7, 4, 'August 17, 2016', '1pm', '')
          ;
