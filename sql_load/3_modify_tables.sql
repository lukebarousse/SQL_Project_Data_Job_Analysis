COPY company_dim
FROM 'C:\Program Files\PostgreSQL\16\data\Datasets\sql_course\company_dim.csv'
DELIMITER ',' CSV HEADER;

COPY job_postings_fact
FROM 'C:\Program Files\PostgreSQL\16\data\Datasets\sql_course\company_dim.csv'
DELIMITER ',' CSV HEADER;

COPY skills_job_dim
FROM 'C:\Program Files\PostgreSQL\16\data\Datasets\sql_course\company_dim.csv'
DELIMITER ',' CSV HEADER;

COPY skills_dim
FROM 'C:\Program Files\PostgreSQL\16\data\Datasets\sql_course\company_dim.csv'
DELIMITER ',' CSV HEADER;

/* ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
Database Load Issues for Window Users (follow if receiving permission denied)

NOTE: If you are having issues with permissions. And you get an error like: "could not open file
"C:\file_path\job_postings_fact.csv" for reading: Permission denied."

1. Go to your program files where you have installed postgreSQL
a. Program Files → PostgreSQL → 16 → Data

2. Now you're inside the data folder. Create a new folder called 'Datasets'.

3. Inside the Datasets folder create new folders for your different projects. For this project we'll create a new folder named 'sql_course'

4. Move your CSV files ( company_dim, job_postings_fact, skills_job_dim, skills_dim) into this new folder ( 'sql_course' ).

5. In the code editor ensure your code in this file is updated for the correct file path (e.g., 'C: \Program Files\PostgreSQL\16\data\Datasets\sql_course\company_dim.csv')

6. Run this SQL file.
*/