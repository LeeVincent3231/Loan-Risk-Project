-- Quick data quality check for all tables
SELECT 
  'Monthly Dollars' as dataset,
  COUNT(*) as records,
  MIN(date) as start_date,
  MAX(date) as end_date
FROM `loan_portfolio.origination_monthly_dollar`

UNION ALL

SELECT 
  'Monthly Volume',
  COUNT(*),
  MIN(date),
  MAX(date)
FROM `loan_portfolio.origination_monthly_count`

UNION ALL

SELECT 
  'Neighborhood Income',
  COUNT(*),
  MIN(date),
  MAX(date)
FROM `loan_portfolio.neighborhood_income`

UNION ALL

SELECT 
  'Credit Scores',
  COUNT(*),
  MIN(date),
  MAX(date)
FROM `loan_portfolio.credit_scores`

UNION ALL

SELECT 
  'Age Groups',
  COUNT(*),
  MIN(date),
  MAX(date)
FROM `loan_portfolio.age_groups`;
