--
-- File generated with SQLiteStudio v3.4.16 on Thu Feb 13 19:40:49 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Country
CREATE TABLE IF NOT EXISTS Country (idx INTEGER, Code TEXT PRIMARY KEY, "Long Name" TEXT, "Income Group" TEXT, Region TEXT, "Currency Unit" TEXT, "System of National Accounts" TEXT, "SNA price valuation" TEXT, "System of trade" TEXT, "Government Accounting concept" TEXT, "Table Name" TEXT, "Short Name" TEXT);

-- Table: QPSD.BudgetaryCentralGovIndicator
CREATE TABLE IF NOT EXISTS "QPSD.BudgetaryCentralGovIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.BudgetaryCentralGovRecord
CREATE TABLE IF NOT EXISTS "QPSD.BudgetaryCentralGovRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.BudgetaryCentralGovIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: QPSD.CentralGovIndicator
CREATE TABLE IF NOT EXISTS "QPSD.CentralGovIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.CentralGovRecord
CREATE TABLE IF NOT EXISTS "QPSD.CentralGovRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.CentralGovIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: QPSD.FiancialPublicCorpRecord
CREATE TABLE IF NOT EXISTS "QPSD.FiancialPublicCorpRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.FinancialPublicCorpIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: QPSD.FinancialPublicCorpIndicator
CREATE TABLE IF NOT EXISTS "QPSD.FinancialPublicCorpIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.GeneralGovIndicator
CREATE TABLE IF NOT EXISTS "QPSD.GeneralGovIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.GeneralGovRecord
CREATE TABLE IF NOT EXISTS "QPSD.GeneralGovRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.GeneralGovIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: QPSD.NonfinancialPublicCorpIndicator
CREATE TABLE IF NOT EXISTS "QPSD.NonfinancialPublicCorpIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.NonfinancialPublicCorpRecord
CREATE TABLE IF NOT EXISTS "QPSD.NonfinancialPublicCorpRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.NonfinancialPublicCorpIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: QPSD.TotalPublicSectorIndicator
CREATE TABLE IF NOT EXISTS "QPSD.TotalPublicSectorIndicator" (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSD.TotalPublicSectorRecord
CREATE TABLE IF NOT EXISTS "QPSD.TotalPublicSectorRecord" ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "QPSD.TotalPublicSectorIndicator" (SeriesCode), Year REAL, Value REAL);

-- Table: SPI.Indicator
CREATE TABLE IF NOT EXISTS "SPI.Indicator" (Code Text PRIMARY KEY, "License Type" Text, "Indicator Name" Text, "Short definition" Text, "Long definition" Text, Source Text, Topic Text, Periodicity Text, "Statistical concept and methodology" Text, "Development relevance" Text, "License URL" Text);

-- Table: SPI.Record
CREATE TABLE IF NOT EXISTS "SPI.Record" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "SPI.Indicator" (Code), Year REAL, Value REAL);

-- Table: WDI.EconomicIndicator
CREATE TABLE IF NOT EXISTS "WDI.EconomicIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "License URL" TEXT);

-- Table: WDI.EconomicRecord
CREATE TABLE IF NOT EXISTS "WDI.EconomicRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.EconomicIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.EducationIndicator
CREATE TABLE IF NOT EXISTS "WDI.EducationIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "License URL" TEXT);

-- Table: WDI.EducationRecord
CREATE TABLE IF NOT EXISTS "WDI.EducationRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.EducationIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.EnvironmentIndicator
CREATE TABLE IF NOT EXISTS "WDI.EnvironmentIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "License URL" TEXT);

-- Table: WDI.EnvironmentRecord
CREATE TABLE IF NOT EXISTS "WDI.EnvironmentRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.EnvironmentIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.FinancialSectorIndicator
CREATE TABLE IF NOT EXISTS "WDI.FinancialSectorIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "License URL" TEXT);

-- Table: WDI.FinancialSectorRecord
CREATE TABLE IF NOT EXISTS "WDI.FinancialSectorRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.FinancialSectorIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.GenderIndicator
CREATE TABLE IF NOT EXISTS "WDI.GenderIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "License URL" TEXT);

-- Table: WDI.GenderRecord
CREATE TABLE IF NOT EXISTS "WDI.GenderRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.GenderIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.HealthIndicator
CREATE TABLE IF NOT EXISTS "WDI.HealthIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Notes from original source" TEXT, "Other web links" TEXT, "License URL" TEXT);

-- Table: WDI.HealthRecord
CREATE TABLE IF NOT EXISTS "WDI.HealthRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.HealthIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.InfrastructureIndicator
CREATE TABLE IF NOT EXISTS "WDI.InfrastructureIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDI.InfrastructureRecord
CREATE TABLE IF NOT EXISTS "WDI.InfrastructureRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.InfrastructureIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.PovertyIndicator
CREATE TABLE IF NOT EXISTS "WDI.PovertyIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Reference period" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Related source links" TEXT, "License URL" TEXT);

-- Table: WDI.PovertyRecord
CREATE TABLE IF NOT EXISTS "WDI.PovertyRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.PovertyIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.PrivateSectorIndicator
CREATE TABLE IF NOT EXISTS "WDI.PrivateSectorIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDI.PrivateSectorRecord
CREATE TABLE IF NOT EXISTS "WDI.PrivateSectorRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.PrivateSectorIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.PublicSectorIndicator
CREATE TABLE IF NOT EXISTS "WDI.PublicSectorIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Notes from original source" TEXT, "Related source links" TEXT, "Related indicators" TEXT, "License URL" TEXT);

-- Table: WDI.PublicSectorRecord
CREATE TABLE IF NOT EXISTS "WDI.PublicSectorRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.PublicSectorIndicator" (Code), Year REAL, Value REAL);

-- Table: WDI.SocialIndicator
CREATE TABLE IF NOT EXISTS "WDI.SocialIndicator" (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDI.SocialRecord
CREATE TABLE IF NOT EXISTS "WDI.SocialRecord" ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES "WDI.SocialIndicator" (Code), Year REAL, Value REAL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
