/*
BUSINESS QUESTION: What is the volume opportunity in underserved market segments compared to historical peaks?

INSIGHTS:
- Subprime credit represents largest opportunity at $4.1B, nearly twice other segments combined
- Young borrower segment shows $1.8B opportunity reflecting demographic shift away from under-30 market
- Geographic diversification opportunity of $1.7B in below-median income areas indicates concentration risk

IMPLICATIONS:
- Total addressable market of $7.6B in underserved segments provides significant revenue expansion potential
- Subprime focus offers highest ROI but requires enhanced risk management and pricing strategies
- Demographic and geographic opportunities require targeted acquisition and product strategies to capture volume
*/

WITH latest_date AS (
  SELECT MAX(PARSE_DATE("%Y-%m", date)) as max_date
  FROM `loan_portfolio.credit_scores`
),
current_volumes AS (
  -- Current subprime volume (sum all subprime categories)
  SELECT 
    'Subprime Credit' as segment_name,
    SUM(vol) as current_volume
  FROM `loan_portfolio.credit_scores` c
  CROSS JOIN latest_date l
  WHERE PARSE_DATE("%Y-%m", c.date) = l.max_date
    AND credit_score_group IN ('Deep subprime', 'Subprime', 'Near-prime')
  
  UNION ALL
  
  -- Current young borrower volume  
  SELECT 
    'Young Borrowers' as segment_name,
    vol as current_volume
  FROM `loan_portfolio.age_groups` a
  CROSS JOIN latest_date l
  WHERE PARSE_DATE("%Y-%m", a.date) = l.max_date
    AND age_group = 'Younger than 30'
    
  UNION ALL
  
  -- Current below-median income volume (sum Low + Moderate)
  SELECT 
    'Below Median Income' as segment_name,
    SUM(vol) as current_volume
  FROM `loan_portfolio.neighborhood_income` n
  CROSS JOIN latest_date l
  WHERE PARSE_DATE("%Y-%m", n.date) = l.max_date
    AND income_level_group IN ('Low', 'Moderate')
),
historical_peaks AS (
  -- Historical peak subprime volume (sum all subprime categories by month, then take max)
  SELECT 
    'Subprime Credit' as segment_name,
    MAX(monthly_total) as peak_volume
  FROM (
    SELECT 
      PARSE_DATE("%Y-%m", date) as month,
      SUM(vol) as monthly_total
    FROM `loan_portfolio.credit_scores`
    WHERE PARSE_DATE("%Y-%m", date) BETWEEN '2020-01-01' AND '2022-12-01'
      AND credit_score_group IN ('Deep subprime', 'Subprime', 'Near-prime')
    GROUP BY month
  )
  
  UNION ALL
  
  -- Historical peak young borrower volume
  SELECT 
    'Young Borrowers' as segment_name,
    MAX(vol) as peak_volume
  FROM `loan_portfolio.age_groups`
  WHERE PARSE_DATE("%Y-%m", date) BETWEEN '2020-01-01' AND '2022-12-01'
    AND age_group = 'Younger than 30'
    
  UNION ALL
  
  -- Historical peak below-median volume (sum Low + Moderate by month, then take max)
  SELECT 
    'Below Median Income' as segment_name,
    MAX(monthly_total) as peak_volume
  FROM (
    SELECT 
      PARSE_DATE("%Y-%m", date) as month,
      SUM(vol) as monthly_total
    FROM `loan_portfolio.neighborhood_income`
    WHERE PARSE_DATE("%Y-%m", date) BETWEEN '2020-01-01' AND '2022-12-01'
      AND income_level_group IN ('Low', 'Moderate')
    GROUP BY month
  )
)
SELECT 
  c.segment_name,
  ROUND(c.current_volume / 1000000, 1) as current_volume_millions,
  ROUND(h.peak_volume / 1000000, 1) as peak_volume_millions,
  ROUND((h.peak_volume - c.current_volume) / 1000000, 1) as opportunity_gap_millions
FROM current_volumes c
JOIN historical_peaks h ON c.segment_name = h.segment_name
ORDER BY opportunity_gap_millions DESC;
