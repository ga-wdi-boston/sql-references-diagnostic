# Diagnostic: PostgreSQL Relationships

## Question 1

Create three tables using the file `scripts/create_tables.sql` (don't forget id
columns for all tables):

-   `doctors` - use the first line of `data/doctors.csv` for the column names
-   `patients` - use the first line of `data/patients.csv` for the column names
-   `appointments` - which should have date, time, and comment columns (with
    types `DATE`, `TIME`, and `TEXT` respectively) as well as columns
    referencing both doctors and patients.
    -- create doctors, patients, and appointments tables
    -- create a table to store information about books

    -- create a table to store information about patients
    -- family_name,given_name,gender,born_on,insurance
    CREATE TABLE patients(
      id SERIAL PRIMARY KEY,
      family_name TEXT,
      given_name TEXT,
      gender TEXT,
      born_on DATE,
      insurance TEXT
    );

    -- create a table to store information about doctors
    -- family_name,given_name,gender,born_on,specialty

    CREATE TABLE doctors(
      id SERIAL PRIMARY KEY,
      family_name TEXT,
      given_name TEXT,
      gender TEXT,
      born_on DATE,
      specialty TEXT
    );

    -- create a table to store information about doctors
    -- family_name,given_name,gender,born_on,specialty

    CREATE TABLE appointments(
      id SERIAL PRIMARY KEY,
      start_on INTEGER,
      doctor_id INTEGER REFERENCES doctors(id),
      patient_id INTEGER REFERENCES patients(id)
    );

    CREATE INDEX ON appointments(doctor_id);
    CREATE INDEX ON appointments(patient_id);

psql sql-crud < scripts/create_tables.sql;



## Question 2

Use the PSQL `\copy` command to load the doctors and patients tables from the
files `data/doctors.csv` and `data/patients.csv` respectively. Save your code in
`scripts/load_doctors_and_patients.psql`.

\copy patients (family_name,given_name,gender,born_on,insurance) FROM 'data/patients.csv' WITH (FORMAT csv, HEADER true);
\copy doctors (family_name,given_name,gender,born_on,specialty) FROM 'data/patients.csv' WITH (FORMAT csv, HEADER true);

## Question 3

Create the following appointments by inserting the appropriate rows into the
appointments table. Save your code in `insert_into_appointments.sql`:

-   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(201608121000)
  SELECT 'Wilcox', 'Marsha'
  UNION
  SELECT 'Hilton', 'Vicky'
;
INSERT INTO appointments(201608171300)
  SELECT 'Talley', 'Ivory'
  UNION
  SELECT 'Hubbard', 'Spencer'
;
INSERT INTO appointments(201608121000)
  SELECT 'Wilcox', 'Marsha'
  UNION
  SELECT 'Hilton', 'Vicky'
;
INSERT INTO appointments(201608121300)
  SELECT 'Hodge', 'Blake'
  UNION
  SELECT 'Hilton', 'Vicky'
;


## Question 4

Write a query to retrieve the names and appointment times for everyone seeing
Dr. Hubbard. Then, write another to retrieve the Doctors' names and appointment
times for Marsha Wilcox. Save your code in `scripts/select_appointments.sql`.

-- ran out of time
