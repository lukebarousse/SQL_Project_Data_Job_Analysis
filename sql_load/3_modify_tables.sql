/* ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
Database Load Issues (follow if receiving permission denied when running SQL code below)

NOTE: If you are having issues with permissions. And you get error: "could not open file
"[your file path]\job_postings_fact.csv" for reading: Permission denied."

1. Open pgAdmin
2. In Object Explorer (left-hand pane), navigate to `sql_course` database
3. Right-click `sql_course` and select `PSQL Tool`
    - This opens a terminal window to write the following code
4. Get the absolute file path of your csv files
    1. Find path by right-clicking a CSV file in VS Code and selecting “Copy Path”
5. Paste the following into `PSQL Tool`, (with the CORRECT file path)

\copy company_dim FROM '[insert file path]/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy skills_dim FROM '[insert file path]/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy job_postings_fact FROM '[insert file path]/csv_files/job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

\copy skills_job_dim FROM '[insert file path]/csv_files/skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');

*/

COPY company_dim
FROM '[insert file path]/csv_files/company_dim.csv'
DELIMITER ',' CSV HEADER;

COPY skills_dim
FROM '[insert file path]/csv_files/skills_dim.csv'
DELIMITER ',' CSV HEADER;

COPY job_postings_fact
FROM '[insert file path]/csv_files/job_postings_fact.csv'
DELIMITER ',' CSV HEADER;

COPY skills_job_dim
FROM '[insert file path]/csv_files/skills_job_dim.csv'
DELIMITER ',' CSV HEADER;
