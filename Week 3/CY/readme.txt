this folder contains data sets segregated by income level and region, extracted from our database.
  the 20yr folder contains data that includes the year 2024, which some countries don't have
  the 20yr dataset (no Year 2024) folder contains data except for the year 2024
in both, there are files prefixed with "basic_stats_" which contain basic stats about the associated data set

the views folder contains sql queries that are intended to be used as views in our database, when accessed via sqlitestudio

these two files (also located in "20yr dataset (no Year 2024)") have been cleaned of all columns that have any nulls:
Group1Data_20years_northamerica_NoNaNColumns(198).csv 
Group1Data_20years_southasia_NoNaNColumns(239).csv

the code folder contains the juptyer notebooks that created these files
