# Auto Loan Risk Analytics Platform

Consumer risk analysis and portfolio monitoring using comprehensive CFPB auto loan data (2013-2024)

## Table of Contents
1. [Project Overview](#project-overview)
2. [Tools and Technologies](#tools-and-technologies)
3. [Data Overview](#data-overview)
4. [Analysis Framework](#analysis-framework)
   - [Origination Trends Analysis](#origination-trends-analysis)
   - [Risk Segmentation](#risk-segmentation)
   - [Geographic Risk Assessment](#geographic-risk-assessment)
   - [Demographic Analysis](#demographic-analysis)
5. [Business Intelligence Dashboards](#business-intelligence-dashboards)
6. [Key Insights & Findings](#key-insights--findings)
7. [Risk Recommendations](#risk-recommendations)
8. [Future Enhancements](#future-enhancements)

## Project Overview

This project develops a comprehensive auto loan risk analytics platform to support consumer lending decisions and portfolio management. Using current CFPB data through October 2024, the analysis provides insights into origination trends, risk patterns, and performance metrics across multiple dimensions including credit scores, demographics, and geographic markets.

**Business Objective:** Build end-to-end risk analytics capabilities for auto loan portfolio management, from origination monitoring to performance tracking and early warning systems.

## Tools and Technologies

- **Database**: Google BigQuery (cloud data warehouse)
- **Data Analysis**: SQL, Python (pandas, numpy)
- **Visualization**: Microsoft PowerBI, Excel
- **Development**: GitHub (version control and documentation)
- **Data Sources**: CFPB Consumer Credit Trends Website

## Data Overview

### Primary Data
- **Source**: [Consumer Financial Protection Bureau (CFPB)](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/)

### Dataset Summary

- **Primary Period**: January 2006 - November 2024 
- **Total Datasets**: 5 specialized datasets
- **Data Granularity**: Monthly frequency across all datasets

### Dataset Architecture
| Dataset | Records | Date Range | Structure | Business Purpose |
|---------|---------|------------|-----------|------------------|
| Monthly Dollar Volume | 227 | 2006-01 to 2024-11 | 1 record/month | Origination dollar trends |
| Monthly Loan Count | 227 | 2006-01 to 2024-11 | 1 record/month | Origination volume trends |
| Credit Score Segments | 1,075 | 2007-01 to 2024-11 | 5 segments/month | Risk profiling & performance |
| Age Demographics | 908 | 2006-01 to 2024-11 | 4 age groups/month | Demographic risk analysis |
| Neighborhood Income | 704 | 2010-04 to 2024-11 | 4 income levels/month | Geographic risk assessment |

## Analysis Framework
In analyzing the landscape of consumer auto loan risk, we need to focus on the top-down questions first before diving into SQL queries or modeling. 
- **Overall Market Trends:** How has origination volume and dollar amounts changed over the years?
- **Risk Trends:** How can we assess credit policy and loss forecasting?
- **Demographic Shifts:** How has consumer behaviours changed (age, credit scores, income, etc)
- **Income Patterns:** Are there areas for market expansion opportunities based on Income data?

### Origination Trends Analysis

**Key Questions:**
- How have monthly origination volumes changed over time?
- What is the average loan size trend?

### Risk Segmentation
<!-- Placeholder for risk analysis -->

**Credit Score Analysis:**
- Performance by FICO segments (580-, 580-619, 620-659, 660-719, 720+)
- Risk migration patterns
- Early warning indicators

### Geographic Risk Assessment
<!-- Placeholder for geographic analysis -->

**State-Level Analysis:**
- Origination growth by state
- Regional risk concentration
- Market opportunity identification

### Demographic Analysis
<!-- Placeholder for demographic analysis -->

**Age Group Performance:**
- Lending patterns by generation
- Risk characteristics by age cohort
- Portfolio composition trends

## Business Intelligence Dashboards

### Executive Scorecard
<!-- Placeholder for PowerBI dashboard -->

### Risk Monitoring Dashboard
<!-- Placeholder for risk dashboard -->

### Geographic Analysis Dashboard
<!-- Placeholder for geographic dashboard -->

## Key Insights & Findings

<!-- To be completed after analysis -->

### Origination Trends
- [Key finding 1]
- [Key finding 2]
- [Key finding 3]

### Risk Patterns
- [Risk insight 1]
- [Risk insight 2]
- [Risk insight 3]

### Market Opportunities
- [Opportunity 1]
- [Opportunity 2]
- [Opportunity 3]

## Risk Recommendations

<!-- To be completed after analysis -->

### Portfolio Management
1. [Recommendation 1]
2. [Recommendation 2]
3. [Recommendation 3]

### Market Strategy
1. [Strategy recommendation 1]
2. [Strategy recommendation 2]
3. [Strategy recommendation 3]

### Risk Mitigation
1. [Risk mitigation 1]
2. [Risk mitigation 2]
3. [Risk mitigation 3]

## Future Enhancements

### Phase 2 Development
- Integration with macroeconomic indicators (unemployment, interest rates)
- Predictive modeling for portfolio performance
- Real-time monitoring and alert systems

### Advanced Analytics
- Machine learning models for risk prediction
- Stress testing capabilities
- Automated reporting and insights

### Data Expansion
- Integration with additional data sources
- Enhanced demographic and geographic granularity
- Historical performance tracking

---

**Repository Structure:**
```
auto-loan-risk-analytics/
├── data/raw/                    # Source CSV files
├── sql/analysis/               # BigQuery analytical queries
├── powerbi/                    # Dashboard files
├── excel/templates/            # Reporting templates
└── documentation/              # Project documentation
```
