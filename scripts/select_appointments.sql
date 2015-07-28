-- retrieve appointment information
select p.surname, a.date, a.time
from patients p
inner join appointments a
  on a.patient_id = p.id
inner join doctors d
  on a.doctor_id = d.id
where d.surname = 'Hubbard';

select d.surname, a.date, a.time
from doctors d
inner join appointments a
  on a.doctor_id = d.id
inner join patients p
  on a.patient_id = p.id
where p.surname = 'Wilcox';
