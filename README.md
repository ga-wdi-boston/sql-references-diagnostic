![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Assessment:  An introduction to many-to-many relationships in PostgreSQL

You have 30 minutes.

## Instructions

Fork and clone this repository.

Follow the prompts below and complete each question.  You may use any resource, other than someone else in the classroom, to help you complete the assessment.

- Question 1. Create three tables using the file `scripts/create_tables.sql` (don't forget id columns for all tables):
  +  `doctors` - use the first line of `data/doctors.csv` for the column names
  +  `patients` - use the first line of `data/patients.csv` for the column names
  +  `appointments` - which should have date, time, and comment columns (feel free to use the type `TEXT` for all three) as well as columns referencing both doctors and patients.

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  dob DATE,
  specialty VARCHAR
);


CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname VARCHAR,
  given_name VARCHAR,
  gender CHARACTER VARYING(1),
  dob DATE,
  insurance VARCHAR
);

CREATE TABLE appointments(
  date DATE,
  time TIME,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);

- Question 2. Use the `psql` `\copy` command to load the doctors and patients tables from the files `data/doctors.csv` and `data/patients.csv` respectively.
  + Save your code in `scripts/load_doctors_and_patients.psql`.

\copy patients(surname,given_name,gender,dob,insurance) FROM 'data/patients.csv' WITH (HEADER true, format csv)

\copy doctors(surname,given_name,gender,dob,specialty) FROM 'data/doctors.csv' WITH (HEADER true, format csv)

- Question 3. Create the following appointments by inserting the appropriate rows into the appointments table. Save your code in `insert_into_appointments.sql`:
  + Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
  + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
  + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
  + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(patient_id, doctor_id, time, date)
  VALUES (8,4,'10:00:00', '2016-08-12'),
         (5,6,'13:00:00', '2016-08-17'),
         (8,6,'10:00:00', '2016-08-12'),
         (7,4,'13:00:00', '2016-08-17');


- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.
  + Save your code in `scripts/select_appointments.sql`.

SELECT p.surname, p.given_name, d.specialty, d.surname, a.time, a.date
  FROM appointments a
  INNER JOIN patients p
    ON p.id = a.patient_id
  INNER JOIN doctors d
    ON d.id = a.doctor_id
  WHERE d.surname = 'Hubbard' AND d.given_name = 'Spencer';

SELECT p.surname, p.given_name, d.surname, a.time, a.date
  FROM appointments a
  INNER JOIN patients p
    ON p.id = a.patient_id
  INNER JOIN doctors d
    ON d.id = a.doctor_id
  WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha';

You can test your work by running `psql sql-crud -f <script name>.[p]sql`.

Commit and push your changes.

Submit a pull request.
