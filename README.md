# Auto Loan Risk Analytics Platform

Consumer risk analysis and portfolio monitoring using comprehensive CFPB auto loan data (2013-2024)

## Table of Contents
1. [Project Overview](#project-overview)
2. [Tools and Technologies](#tools-and-technologies)
3. [Data Sources](#data-sources)
4. [Dataset Summary](#dataset-summary)
5. [Data Architecture](#data-architecture)
6. [Analysis Framework](#analysis-framework)
   - [Origination Trends Analysis](#origination-trends-analysis)
   - [Risk Segmentation](#risk-segmentation)
   - [Geographic Risk Assessment](#geographic-risk-assessment)
   - [Demographic Analysis](#demographic-analysis)
7. [Business Intelligence Dashboards](#business-intelligence-dashboards)
8. [Key Insights & Findings](#key-insights--findings)
9. [Risk Recommendations](#risk-recommendations)
10. [Future Enhancements](#future-enhancements)

## Project Overview

This project develops a comprehensive auto loan risk analytics platform to support consumer lending decisions and portfolio management. Using current CFPB data through October 2024, the analysis provides insights into origination trends, risk patterns, and performance metrics across multiple dimensions including credit scores, demographics, and geographic markets.

**Business Objective:** Build end-to-end risk analytics capabilities for auto loan portfolio management, from origination monitoring to performance tracking and early warning systems.

## Tools and Technologies

- **Database**: Google BigQuery (cloud data warehouse)
- **Data Analysis**: SQL, Python (pandas, numpy)
- **Visualization**: Microsoft PowerBI, Excel
- **Development**: GitHub (version control and documentation)
- **Data Sources**: CFPB Consumer Credit Trends API

## Data Sources

### Primary Data
- **Source**: [Consumer Financial Protection Bureau (CFPB)](https://www.consumerfinance.gov/)
- **Coverage**: January 2013 - October 2024
- **Update Frequency**: Monthly

### Specific Datasets Used
1. **[Origination Activity](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/origination-activity/)** - Monthly loan volumes and dollar amounts
2. **[Borrower Risk Profiles](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/borrower-risk-profiles/)** - Performance by credit score segments  
3. **[Lending by Income Level](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/lending-by-neighborhood-income-level/)** - Geographic and income analysis
4. **[Lending by Age](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/lending-by-borrower-age/)** - Demographic performance analysis

## Dataset Summary

<!-- To be completed after data exploration -->

**Data Coverage:**
- **Time Period**: [TO BE FILLED]
- **Total Records**: [TO BE FILLED]
- **Geographic Coverage**: [TO BE FILLED]
- **Credit Score Segments**: [TO BE FILLED]

### Key Metrics Tracked
- Monthly origination volumes (loan count and dollar volume)
- Credit score distribution and performance
- Geographic risk concentration
- Age demographic patterns
- Neighborhood income level analysis

## Data Architecture

### BigQuery Schema
```
loan_portfolio/
├── origination_loan_count          # Monthly number of loans
├── origination_dollar_volume       # Monthly dollar amounts  
├── origination_state_trends        # Geographic analysis
├── risk_by_credit_score           # FICO score segments
├── risk_by_age_group              # Age demographic analysis  
└── risk_by_income_level           # Income neighborhood analysis
```

### Data Processing Pipeline
<!-- To be completed during implementation -->

## Analysis Framework

### Origination Trends Analysis
<!-- Placeholder for origination analysis -->

**Key Questions:**
- How have monthly origination volumes changed over time?
- What is the average loan size trend?
- How do seasonal patterns affect lending?

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
