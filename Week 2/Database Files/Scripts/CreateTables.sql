--
-- File generated with SQLiteStudio v3.4.16 on Thu Feb 13 20:05:48 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Country
DROP TABLE IF EXISTS Country;
CREATE TABLE IF NOT EXISTS Country (idx INTEGER, Code TEXT PRIMARY KEY, "Long Name" TEXT, "Income Group" TEXT, Region TEXT, "Currency Unit" TEXT, "System of National Accounts" TEXT, "SNA price valuation" TEXT, "System of trade" TEXT, "Government Accounting concept" TEXT, "Table Name" TEXT, "Short Name" TEXT);

-- Table: QPSDBudgetaryCentralGovIndicator
DROP TABLE IF EXISTS QPSDBudgetaryCentralGovIndicator;
CREATE TABLE IF NOT EXISTS QPSDBudgetaryCentralGovIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDBudgetaryCentralGovRecord
DROP TABLE IF EXISTS QPSDBudgetaryCentralGovRecord;
CREATE TABLE IF NOT EXISTS QPSDBudgetaryCentralGovRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDBudgetaryCentralGovIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: QPSDCentralGovIndicator
DROP TABLE IF EXISTS QPSDCentralGovIndicator;
CREATE TABLE IF NOT EXISTS QPSDCentralGovIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDCentralGovRecord
DROP TABLE IF EXISTS QPSDCentralGovRecord;
CREATE TABLE IF NOT EXISTS QPSDCentralGovRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDCentralGovIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: QPSDFiancialPublicCorpRecord
DROP TABLE IF EXISTS QPSDFiancialPublicCorpRecord;
CREATE TABLE IF NOT EXISTS QPSDFiancialPublicCorpRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDFinancialPublicCorpIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: QPSDFinancialPublicCorpIndicator
DROP TABLE IF EXISTS QPSDFinancialPublicCorpIndicator;
CREATE TABLE IF NOT EXISTS QPSDFinancialPublicCorpIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDGeneralGovIndicator
DROP TABLE IF EXISTS QPSDGeneralGovIndicator;
CREATE TABLE IF NOT EXISTS QPSDGeneralGovIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDGeneralGovRecord
DROP TABLE IF EXISTS QPSDGeneralGovRecord;
CREATE TABLE IF NOT EXISTS QPSDGeneralGovRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDGeneralGovIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: QPSDNonfinancialPublicCorpIndicator
DROP TABLE IF EXISTS QPSDNonfinancialPublicCorpIndicator;
CREATE TABLE IF NOT EXISTS QPSDNonfinancialPublicCorpIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDNonfinancialPublicCorpRecord
DROP TABLE IF EXISTS QPSDNonfinancialPublicCorpRecord;
CREATE TABLE IF NOT EXISTS QPSDNonfinancialPublicCorpRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDNonfinancialPublicCorpIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: QPSDTotalPublicSectorIndicator
DROP TABLE IF EXISTS QPSDTotalPublicSectorIndicator;
CREATE TABLE IF NOT EXISTS QPSDTotalPublicSectorIndicator (SeriesCode TEXT PRIMARY KEY, "Series Name" TEXT);

-- Table: QPSDTotalPublicSectorRecord
DROP TABLE IF EXISTS QPSDTotalPublicSectorRecord;
CREATE TABLE IF NOT EXISTS QPSDTotalPublicSectorRecord ("Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES QPSDTotalPublicSectorIndicator (SeriesCode), Year REAL, Value REAL);

-- Table: SPIIndicator
DROP TABLE IF EXISTS SPIIndicator;
CREATE TABLE IF NOT EXISTS SPIIndicator (Code Text PRIMARY KEY, "License Type" Text, "Indicator Name" Text, "Short definition" Text, "Long definition" Text, Source Text, Topic Text, Periodicity Text, "Statistical concept and methodology" Text, "Development relevance" Text, "License URL" Text);

-- Table: SPIRecord
DROP TABLE IF EXISTS SPIRecord;
CREATE TABLE IF NOT EXISTS SPIRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES SPIIndicator (Code), Year REAL, Value REAL);

-- Table: WDIEconomicIndicator
DROP TABLE IF EXISTS WDIEconomicIndicator;
CREATE TABLE IF NOT EXISTS WDIEconomicIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "License URL" TEXT);

-- Table: WDIEconomicRecord
DROP TABLE IF EXISTS WDIEconomicRecord;
CREATE TABLE IF NOT EXISTS WDIEconomicRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIEconomicIndicator (Code), Year REAL, Value REAL);

-- Table: WDIEducationIndicator
DROP TABLE IF EXISTS WDIEducationIndicator;
CREATE TABLE IF NOT EXISTS WDIEducationIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "License URL" TEXT);

-- Table: WDIEducationRecord
DROP TABLE IF EXISTS WDIEducationRecord;
CREATE TABLE IF NOT EXISTS WDIEducationRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIEducationIndicator (Code), Year REAL, Value REAL);

-- Table: WDIEnvironmentIndicator
DROP TABLE IF EXISTS WDIEnvironmentIndicator;
CREATE TABLE IF NOT EXISTS WDIEnvironmentIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "License URL" TEXT);

-- Table: WDIEnvironmentRecord
DROP TABLE IF EXISTS WDIEnvironmentRecord;
CREATE TABLE IF NOT EXISTS WDIEnvironmentRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIEnvironmentIndicator (Code), Year REAL, Value REAL);

-- Table: WDIFinancialSectorIndicator
DROP TABLE IF EXISTS WDIFinancialSectorIndicator;
CREATE TABLE IF NOT EXISTS WDIFinancialSectorIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "License URL" TEXT);

-- Table: WDIFinancialSectorRecord
DROP TABLE IF EXISTS WDIFinancialSectorRecord;
CREATE TABLE IF NOT EXISTS WDIFinancialSectorRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIFinancialSectorIndicator (Code), Year REAL, Value REAL);

-- Table: WDIGenderIndicator
DROP TABLE IF EXISTS WDIGenderIndicator;
CREATE TABLE IF NOT EXISTS WDIGenderIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "License URL" TEXT);

-- Table: WDIGenderRecord
DROP TABLE IF EXISTS WDIGenderRecord;
CREATE TABLE IF NOT EXISTS WDIGenderRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIGenderIndicator (Code), Year REAL, Value REAL);

-- Table: WDIHealthIndicator
DROP TABLE IF EXISTS WDIHealthIndicator;
CREATE TABLE IF NOT EXISTS WDIHealthIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Notes from original source" TEXT, "Other web links" TEXT, "License URL" TEXT);

-- Table: WDIHealthRecord
DROP TABLE IF EXISTS WDIHealthRecord;
CREATE TABLE IF NOT EXISTS WDIHealthRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIHealthIndicator (Code), Year REAL, Value REAL);

-- Table: WDIInfrastructureIndicator
DROP TABLE IF EXISTS WDIInfrastructureIndicator;
CREATE TABLE IF NOT EXISTS WDIInfrastructureIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDIInfrastructureRecord
DROP TABLE IF EXISTS WDIInfrastructureRecord;
CREATE TABLE IF NOT EXISTS WDIInfrastructureRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIInfrastructureIndicator (Code), Year REAL, Value REAL);

-- Table: WDIPovertyIndicator
DROP TABLE IF EXISTS WDIPovertyIndicator;
CREATE TABLE IF NOT EXISTS WDIPovertyIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, "Unit of measure" TEXT, Periodicity TEXT, "Reference period" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Related source links" TEXT, "License URL" TEXT);

-- Table: WDIPovertyRecord
DROP TABLE IF EXISTS WDIPovertyRecord;
CREATE TABLE IF NOT EXISTS WDIPovertyRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIPovertyIndicator (Code), Year REAL, Value REAL);

-- Table: WDIPrivateSectorIndicator
DROP TABLE IF EXISTS WDIPrivateSectorIndicator;
CREATE TABLE IF NOT EXISTS WDIPrivateSectorIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Dataset TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDIPrivateSectorRecord
DROP TABLE IF EXISTS WDIPrivateSectorRecord;
CREATE TABLE IF NOT EXISTS WDIPrivateSectorRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIPrivateSectorIndicator (Code), Year REAL, Value REAL);

-- Table: WDIPublicSectorIndicator
DROP TABLE IF EXISTS WDIPublicSectorIndicator;
CREATE TABLE IF NOT EXISTS WDIPublicSectorIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Other notes" TEXT, "Notes from original source" TEXT, "Related source links" TEXT, "Related indicators" TEXT, "License URL" TEXT);

-- Table: WDIPublicSectorRecord
DROP TABLE IF EXISTS WDIPublicSectorRecord;
CREATE TABLE IF NOT EXISTS WDIPublicSectorRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDIPublicSectorIndicator (Code), Year REAL, Value REAL);

-- Table: WDISocialIndicator
DROP TABLE IF EXISTS WDISocialIndicator;
CREATE TABLE IF NOT EXISTS WDISocialIndicator (Code TEXT PRIMARY KEY, "License Type" TEXT, "Indicator Name" TEXT, "Short definition" TEXT, "Long definition" TEXT, Source TEXT, Topic TEXT, Periodicity TEXT, "Base Period" TEXT, "Aggregation method" TEXT, "Statistical concept and methodology" TEXT, "Development relevance" TEXT, "Limitations and exceptions" TEXT, "General comments" TEXT, "Notes from original source" TEXT, "License URL" TEXT);

-- Table: WDISocialRecord
DROP TABLE IF EXISTS WDISocialRecord;
CREATE TABLE IF NOT EXISTS WDISocialRecord ("Index" INTEGER PRIMARY KEY AUTOINCREMENT, "Country Code" TEXT REFERENCES Country (Code), "Series Code" TEXT REFERENCES WDISocialIndicator (Code), Year REAL, Value REAL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
