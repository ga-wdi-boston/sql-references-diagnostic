-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard. Retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- Save your code in scripts/select_appointments.sql.
select p.given_name, p.surname, a.appt_time, a.appt_date, d.surname
from appointments a
inner join patients p
  on a.patient_id = p.id
inner join doctors d
  on a.doctor_id = d.id
where d.surname = 'Hubbard'
;

