-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date,time,comment,doctor_id,patient_id)
  VALUES ('August 12, 2016','10am','appointments',
          (SELECT id
            FROM doctors
            WHERE surname = 'Hilton'
            AND given_name = 'Vicky'),
          (SELECT id
            FROM patients
            WHERE surname = 'Wilcox'
            AND given_name = 'Marsha')),
          -- the rest of the insert assumed the known doctor and patient ids
         ('August 17, 2016','1pm','appointments',6,5),
         ('August 12, 2016','10am','appointments',6,8),
         ('August 17, 2016','1pm','appointments',4,7)
;



