/*
this script was tested with sqlite cli.
to export each entity in our database to separate csv's,
run these commands in the prompt:
.open BANA698GROUP1.db.db
.read sqlite_output_all_entities_separately.sql
*/
.mode csv
.headers on

-- QPSD Budgetary Central Gov
.output QPSD_Budgetary_Central_Gov.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDBudgetaryCentralGovRecord r
JOIN QPSDBudgetaryCentralGovIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- QPSD Central Gov
.output QPSD_Central_Gov.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDCentralGovRecord r
JOIN QPSDCentralGovIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- QPSD Financial Public Corp
.output QPSD_Financial_Public_Corp.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDFinancialPublicCorpRecord r
JOIN QPSDFinancialPublicCorpIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- QPSD General Gov
.output QPSD_General_Gov.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDGeneralGovRecord r
JOIN QPSDGeneralGovIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- QPSD Nonfinancial Public Corp
.output QPSD_Nonfinancial_Public_Corp.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDNonfinancialPublicCorpRecord r
JOIN QPSDNonfinancialPublicCorpIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- QPSD Total Public Sector
.output QPSD_Total_Public_Sector.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Series Name" AS IndicatorName,
  r.Value
FROM QPSDTotalPublicSectorRecord r
JOIN QPSDTotalPublicSectorIndicator i
  ON r."Series Code" = i.SeriesCode
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- SPI Records
.output SPI_Records.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM SPIRecord r
JOIN SPIIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Economic
.output WDI_Economic.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIEconomicRecord r
JOIN WDIEconomicIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Education
.output WDI_Education.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIEducationRecord r
JOIN WDIEducationIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;
  
.output stdout

-- WDI Environment
.output WDI_Environment.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIEnvironmentRecord r
JOIN WDIEnvironmentIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Financial Sector
.output WDI_Financial_Sector.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIFinancialSectorRecord r
JOIN WDIFinancialSectorIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Gender
.output WDI_Gender.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIGenderRecord r
JOIN WDIGenderIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Health
.output WDI_Health.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIHealthRecord r
JOIN WDIHealthIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Infrastructure
.output WDI_Infrastructure.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIInfrastructureRecord r
JOIN WDIInfrastructureIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Poverty
.output WDI_Poverty.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIPovertyRecord r
JOIN WDIPovertyIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Private Sector
.output WDI_Private_Sector.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIPrivateSectorRecord r
JOIN WDIPrivateSectorIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Public Sector
.output WDI_Public_Sector.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDIPublicSectorRecord r
JOIN WDIPublicSectorIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;

.output stdout

-- WDI Social
.output WDI_Social.csv
SELECT 
  c."Short Name" AS CountryShortName,
  r.Year,
  i."Indicator Name" AS IndicatorName,
  r.Value
FROM WDISocialRecord r
JOIN WDISocialIndicator i
  ON r."Series Code" = i.Code
JOIN Country c
  ON r."Country Code" = c.Code;
  
.output stdout
