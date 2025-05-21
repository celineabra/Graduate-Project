# 698 Culminating Project - Project Title / Research Objective

**Authors**: Joshua Cabal, Celine Abrahamian, Namrata Patil, Christopher Yeung

California State University, Northridge

April 21, 2025
- [698 Culminating Project - Project Title / Research Objective](#698-culminating-project---project-title--research-objective)
  - [Abstract](#abstract)
  - [Introduction](#introduction)
  - [Methodology](#methodology)
    - [Data Source and Extraction](#data-source-and-extraction)
    - [Models](#models)
  - [Results](#results)
    - [Exploratory Data Analysis](#exploratory-data-analysis)
    - [Modeling](#modeling)
    - [Model Evaluation](#model-evaluation)
  - [Conclusion](#conclusion)
  - [Appendix](#appendix)
  - [References](#references)

## Abstract

The primary objective of this paper is to analyze global trends and identify the most influential development indicators affecting life expectancy at birth. Life expectancy at birth, as defined by the World Health Organization, represents the average number of years a newborn is expected to live if current age- and sex-specific mortality rates persist. This research examines these trends across various countries, territories, and geographic areas. This study utilizes seventeen years of data from the World Development Indicators (WDI) Databank (**N** = 2886, **Years**: 2004 - 2021, **Countries** = 171). The WDI Databank is the World Bank’s comprehensive collection of global development statistics, compiled from officially recognized international sources. The methodology begins with exploratory data analysis to investigate temporal trends and complex patterns in life expectancy. Following this, several traditional prediction models are applied to forecast and predict life expectancy at birth, and the performance and utility of these models will be evaluated. The anticipated outcome is the discovery of complex relationships between life expectancy and key world development indicators. Additionally, the research aims to pinpoint the best-performing prediction model and articulate its practical utility. Ultimately, the findings are expected to provide valuable insights for policymakers and stakeholders, thereby facilitating informed decisions for public health improvements and optimal resource allocation.


## Introduction

Life expectancy reflects a nation’s health and overall development. Socioeconomic conditions, environmental quality, and health infrastructure are all critical influences. This paper explores how these domains interact to shape life expectancy, and whether prediction and grouping techniques can uncover meaningful insights for decision-makers.


## Methodology

Data was sourced from:
World Development Indicators (WDI)
Quarterly Public Sector Debt (QPSD)
Statistical Performance Indicators (SPI)

20 years of country-level indicator values were normalized into three table types:
Country
DB.TopicIndicator
DB.Record


### Data Source and Extraction

Initially, the data from three databases were extracted: World Development Indicators, Quarterly Public Sector Debt, and Statistical Performance Indicators.

The **World Development Indicators (WDI)** is the primary World Bank collection of development indicators, compiled from officially recognized international sources. It presents the most current and accurate global development data available, and includes national, regional and global estimates. The **Statistical Capacity Indicators (SPI)** provides information on various aspects of national statistical systems of developing countries, including an overall country-level statistical capacity indicators. The **Quarterly Public Sector Debt (QPSD)** was jointly  developed by the World Bank and the International Monetary Fund, and the database brings together detailed public sector debt data of selected developing /emerging market countries.

The data for all indicators from all countries, from the years 2004 - 2024 (20 years) were extracted from this database. The metadata of the countries and the indicators were also extracted and stored in the database. The country, indicator, and record value were stored into three respective tables:

1. `Country` (1 table)
2. `DB.TopicIndicator` (18 tables)
3. `DB.Record` (18 tables)

Where `DB` is the prefix of the source database.

![ERD Snippet](<Report Figures/ERD_SNIPPET.png>)
**ERD Snippet Figure**: Configured one-to-many (1-M) relationship between record, and the country and indicator tables. This structure was repeated across all indicators and respective records from the various databases.

Our database, fully populated and configured, is available in the project repository.

### Models

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

## Results

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

### Exploratory Data Analysis

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

### Modeling

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

### Model Evaluation

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

## Conclusion

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

## Appendix

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur

## References
