-- retrieve appointment information

select p.given_name, p.surname
  from patients p
  where doctor_id = 6
  inner join appointments a
on p.id = a.id
;

select a.day, a.time_of_day, a.doctor_id
  from appointments a
  where patient_id = 8
  inner join appointments a
on p.id = a.id
;
