-- insert appointments creating connections between doctors and patients
insert into appointments(doctor_id, patient_id, date_on)
 select doctors.id, patients.id, timestamp '2016-08-12 10:00'
  from doctors, patients
    where doctors.given_name = 'Vicky'
    and doctors.family_name = 'Hilton'
    and patients.given_name = 'Marsha'
    and patients.given_name = 'Wilcox'
  union
  select doctors.id, patients.id, '2016-08-17 13:00'
   from doctors, patients
     where doctors.given_name = 'Spencer'
     and doctors.family_name = 'Hubbard'
     and patients.given_name = 'Ivory'
     and patients.given_name = 'Talley'
   union
   select doctors.id, patients.id, '2016-08-12 10:00'
    from doctors, patients
      where doctors.given_name = 'Spencer'
      and doctors.family_name = 'Hubbard'
      and patients.given_name = 'Marsha'
      and patients.given_name = 'Wilcox'
   union
    select doctors.id, patients.id, '2016-08-17 13:00'
     from doctors, patients
       where doctors.given_name = 'Vicky'
       and doctors.family_name = 'Hilton'
       and patients.given_name = 'Blake'
       and patients.given_name = 'Hodge'
  ;
