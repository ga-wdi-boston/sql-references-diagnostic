-- retrieve appointment information
select p.surname, p.given_name, a.time
from patients p
inner join appointments a
  on a.patient_id = p.id
inner join doctors d
  on a.doctor_id = d.id
where d.id = 6
;

select d.surname, d.given_name, a.time
from patients p
inner join appointments a
  on a.patient_id = p.id
inner join doctors d
  on a.doctor_id = d.id
where p.id = 8
;
