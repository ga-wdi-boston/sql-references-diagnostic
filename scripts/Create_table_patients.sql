CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insureance TEXT,
);
