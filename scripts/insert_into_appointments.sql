-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appointment_date, time, doctor_id, patient_id)
  SELECT 'August 12, 2016', '10am',
    (select id
    from doctors where surname = 'Hilton'
    and given_name = 'Vickie'),
    (select id
      from patients
      where surname = 'Wilcox'
      and given_name ='Marsha')
  UNION
  SELECT 'August 17, 2016', '1pm',
    (select id
      from doctors
      where surname = 'Hubbard'
      and given_name = 'Spencer'),
    (select id from patients
      where surname = 'Talley'
      and given_name = 'Ivory')
  UNION
  SELECT 'August 12, 2016', '10am',
    (select id
      from doctors
      where surname = 'Hubbard'
      and given_name = 'Spencer'),
    (select id
      from patients
      where surname = 'Wilcox'
      and given_name ='Marsha')
  UNION
  SELECT 'August 17, 2016', '1pm',
    (select id
    from doctors where surname = 'Hilton'
    and given_name = 'Vickie'),
    (select id
      from patients
      where surname = 'Hodge'
      and given_name ='Blake')

;
