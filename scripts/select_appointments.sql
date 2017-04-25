
SELECT
 b.family_name AS patient_fam_nam,
 b.given_name AS patient_giv_name,
 a.appointment_time,
 a.apointment_date
FROM appointments AS a
  LEFT JOIN patients AS b
    ON a.patient_id=b.id
  LEFT JOIN doctors AS c
    ON a.doctor_id=c.id
WHERE c.id = 8;

SELECT
 c.family_name AS doctor_fam_nam,
 c.given_name AS doctor_giv_name,
 a.appointment_time,
 a.apointment_date
FROM appointments AS a
  LEFT JOIN patients AS b
    ON a.patient_id=b.id
  LEFT JOIN doctors AS c
    ON a.doctor_id=c.id
WHERE b.id = 6;
