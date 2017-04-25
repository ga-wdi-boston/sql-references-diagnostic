-- create doctors, patients, and appointments tables
CREATE TABLE doctors(
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT,
  id INT PRIMARY KEY
)

CREATE TABLE patients(
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT,
  id INT PRIMARY KEY
)

CREATE TABLE appointments(
  date DATE,
  time TIME,
  comment TEXT,
  patient_id INT references patients(id),
  doctor_id INT references doctors(id)
)

family_name,given_name,gender,born_on,insurance
