this folder contains data sets segregated by income level and region, extracted from our database composed of worldbank datasets.

the "20yr dataset" folder contains data including year 2024 (when possible)
the "20yr dataset (no Year 2024)" folder contains the same data except for the year 2024, as some country entries don't have 2024 data
	in both folders, the files prefixed with "basic_stats_" contain basic stats about the numeric columns in the associated data set
	eg percent of the column that is NaN, mins, maxes, standard deviation, et al.

the "code" folder contains the juptyer notebooks that created these files

the "views" folder contains sql queries that are intended to be used as views in sqlitestudio when querying our database to extract data with filters
	the "no 2024" folder inside "views" contain the same queries but with an additional restriction to not extract year 2024

these three files (copied from "20yr dataset (no Year 2024)") are alternative cleaned datasets, and are not our main data sets
they have had all columns with at least one NaN removed, while all countries each have a full 20 years' worth of data (20 rows per country)
	Group1Data_20years_northamerica_NoNaNColumns.csv (198 indicator features)
	Group1Data_20years_southasia_NoNaNColumns.csv (239 indicator features)
	Group1Data_20years_lowermiddleincome.NoNaNColumns.csv (152 indicator features)

"basic_stats_Group1Dataset.csv" is basic stats about our main cleaned data set, "Group1Dataset.csv", found in culminating-project-group-1/Week 3/JC/
