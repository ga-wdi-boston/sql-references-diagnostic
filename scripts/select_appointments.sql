-- retrieve appointment information
select patients.given_name, appointments.time
from appointments
inner join patients
on patients.id = appointments.patient_id
where (appointments.doctor_id = (select id from doctors where surname='Hubbard'));
