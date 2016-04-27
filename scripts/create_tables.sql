-- surname,given_name,gender,born_on,specialty
CREATE TABLE doctors(
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  born_on DATE,
  specialty VARCHAR
);

-- surname,given_name,gender,born_on,insurance
CREATE TABLE patients(
  surname VARCHAR,
  given_name VARCHAR,
  gender VARCHAR(1),
  born_on DATE,
  insurance VARCHAR
);

CREATE TABLE appointments(
  date DATE,
  time VARCHAR,
  comment VARCHAR
);
