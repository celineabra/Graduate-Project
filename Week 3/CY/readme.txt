this folder contains data sets segregated by income level and region, extracted from our database.

the "20yr dataset" folder contains data including year 2024 (when possible)
the "20yr dataset (no Year 2024)" folder contains the same data except for the year 2024, as some country entries don't have 2024 data
  in both folders, there are files prefixed with "basic_stats_" which contain basic stats about the numeric columns in the associated data set
  eg percent of the column that is NaN, mins, maxes, standard deviation, et al.

the "views" folder contains sql queries that are intended to be used as views in our database, when accessed via sqlitestudio, 
  to extract data along themes such as region or income level
	the "no 2024" folder inside "views" contain the same queries but with an additional restriction to not extract year 2024

the "code" folder contains the juptyer notebooks that created these files

these two files (copied from "20yr dataset (no Year 2024)") are alternative "cleaned" datasets, and are not our main data sets.
they have had all columns with at least one NaN removed, leaving nearly 200 features available to use for analytics.
all countries in each file have a full 20 years' worth of data (20 rows per country).
	Group1Data_20years_northamerica_NoNaNColumns.csv 
	Group1Data_20years_southasia_NoNaNColumns.csv
