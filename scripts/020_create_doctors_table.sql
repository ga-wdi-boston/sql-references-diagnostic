-- create a table to store information about doctors
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);
