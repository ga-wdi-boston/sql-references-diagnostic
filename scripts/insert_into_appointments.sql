-- insert appointments creating connections between doctors and patients

insert into appointments(apt_date, apt_time, comment, doctors_id, patients_id)
  values('2016-08-12', '10am', 'new patient', 1, 8)

insert into appointments(apt_date, apt_time, comment, doctors_id, patients_id)
    values('2016-08-17', '1pm', 'new patient', 6, 5)

insert into appointments(apt_date, apt_time, comment, doctors_id, patients_id)
      values('2016-08-12', '10am', 'follow-up', 6, 8)

insert into appointments(apt_date, apt_time, comment, doctors_id, patients_id)
  values('2016-08-17', '1pm', 'new patient', 1, 7)
