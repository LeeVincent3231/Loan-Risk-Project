# Auto Loan Risk Analytics Platform

Consumer risk analysis and portfolio monitoring using comprehensive CFPB auto loan data (2006-2024)

## Project Overview

This project develops a comprehensive auto loan risk analytics platform to support consumer lending decisions and portfolio management. Using current CFPB data through November 2024, the analysis provides insights into origination trends, risk patterns, and performance metrics across credit scores, demographics, and geographic markets.

**Business Objective:** Build end-to-end risk analytics capabilities for auto loan portfolio management and strategic market opportunities identification.

## Tools and Technologies

- **Database**: Google BigQuery (cloud data warehouse)
- **Data Analysis**: SQL for comprehensive trend analysis
- **Visualization**: Google Looker Studio (3 interactive dashboards)
- **Development**: GitHub (version control and documentation)
- **Data Source**: [CFPB Consumer Credit Trends](https://www.consumerfinance.gov/data-research/consumer-credit-trends/auto-loans/)

## Data Architecture

**Coverage**: 18+ years of monthly auto loan data (January 2006 - November 2024)

| Dataset | Records | Business Purpose |
|---------|---------|------------------|
| Monthly Originations | 227 | Volume and dollar trend analysis |
| Credit Score Segments | 1,075 | Risk profiling (5 FICO segments) |
| Age Demographics | 908 | Borrower demographic analysis (4 age groups) |
| Neighborhood Income | 704 | Geographic risk assessment (4 income levels) |

## Key Business Insights

### Market Performance
- **Volume Recovery**: +10.2% YoY growth in November 2024 after 2023 market correction
- **Loan Size Stabilization**: Average loan amounts stable at ~$30K after 2021-2022 inflation period
- **Market Timing**: Current growth trajectory indicates favorable expansion conditions

### Risk Migration Trends
- **Flight to Quality**: Prime borrowers (660+ FICO) increased from ~77% to 80%+ market share
- **Credit Concentration**: Portfolio risk decreasing through natural selection toward higher credit quality
- **Subprime Opportunity**: 20% market share decline creates $4.1B revenue opportunity

### Demographic Shifts
- **Aging Customer Base**: Young borrowers (<30) declined to 14.6% from 17%+ historical levels
- **Established Dominance**: 85%+ market concentration in borrowers 30+ years old
- **Pipeline Risk**: Declining young borrower acquisition threatens long-term growth

### Geographic Concentration
- **Affluent Area Focus**: 81%+ originations in above-median income neighborhoods
- **Geographic Risk**: Increasing concentration reduces portfolio diversification
- **Underserved Markets**: Below-median income areas represent $1.7B opportunity

## Strategic Opportunities

**Total Addressable Market**: $7.6 billion in underserved segments

1. **Subprime Credit Expansion** - $4.1B opportunity (largest segment)
2. **Young Borrower Initiative** - $1.8B opportunity (future pipeline)
3. **Geographic Diversification** - $1.7B opportunity (risk balance)

## Business Intelligence Dashboards

### 1. Market Overview Dashboard
- Monthly origination trends and growth metrics
- Average loan amount analysis with YoY comparisons
- Executive KPI scorecards

### 2. Portfolio Risk Assessment
- Credit risk composition and trend analysis
- Age demographic distribution
- Geographic risk concentration monitoring

### 3. Strategic Opportunities
- Market opportunity sizing and prioritization
- Underserved segment analysis
- Strategic recommendations framework

## Technical Implementation

**SQL Analytics**: 4 core analytical queries optimized for business insights
**Data Pipeline**: BigQuery cloud warehouse with automated monthly updates
**Interactive Dashboards**: Looker Studio with real-time data connections
**Professional Documentation**: Comprehensive analysis methodology and findings

## Business Impact

This analytics platform enables data-driven decisions for:
- **Portfolio Risk Management**: Monitor credit quality trends and concentration risk
- **Market Expansion Strategy**: Identify and size growth opportunities in underserved segments  
- **Competitive Positioning**: Understand market dynamics and demographic shifts
- **Strategic Planning**: Balance risk appetite with growth objectives
