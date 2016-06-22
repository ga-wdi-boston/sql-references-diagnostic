-- retrieve appointment information


select p.surname, p.given_name, a.time
  from appointments a
  inner join doctors d
  on d.id = a.doctor_id
  inner join patients p
  on d.id = a.patient_id
  where d.id=7
;

select d.surname, d.given_name, a.time
  from appointments a
  inner join doctors d
  on d.id = a.doctor_id
  inner join patients p
  on d.id = a.patient_id
  where p.id=9
;
