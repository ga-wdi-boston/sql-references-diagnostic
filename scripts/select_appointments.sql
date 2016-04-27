-- retrieve appointment information
select p.given_name, p.surname, a.time
  from patients p
  inner join appointments a
on p.id = a.id  WHERE doctor_id = '6'
;
