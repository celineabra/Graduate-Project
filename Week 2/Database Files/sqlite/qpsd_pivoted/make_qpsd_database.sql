/*
to use with sqlite to make a database out of the Quarterly Public Sector Debt database at worldbank.org.

only the years 2021-2023 are included in the database download.

adjust the source file location below, save,
then run these commands in the prompt:
.open qpsd_database.db
.read make_qpsd_database.sql
*/

CREATE TABLE QPSD(
"Country Name" TEXT,
"Country Code" TEXT,
"Series Name" TEXT,
"Series Code" TEXT,
"2021Q1 [YR2021Q1]" REAL,
"2021Q2 [YR2021Q2]" REAL,
"2021Q3 [YR2021Q3]" REAL,
"2021Q4 [YR2021Q4]" REAL,
"2022Q1 [YR2022Q1]" REAL,
"2022Q2 [YR2022Q2]" REAL,
"2022Q3 [YR2022Q3]" REAL,
"2022Q4 [YR2022Q4]" REAL,
"2023Q1 [YR2023Q1]" REAL,
"2023Q2 [YR2023Q2]" REAL,
"2023Q3 [YR2023Q3]" REAL,
"2023Q4 [YR2023Q4]" REAL
);
PRAGMA table_info(QPSD);

.mode csv
.import "F:/class/BANA 698/week 3/my attempt/P_Data_Extract_From_Quarterly_Public_Sector_Debt.csv" QPSD