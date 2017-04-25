-- create doctors, patients, and appointments tables
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);
