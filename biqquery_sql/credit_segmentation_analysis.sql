/*
BUSINESS QUESTION: Is our auto loan market moving toward higher or lower credit risk?

INSIGHTS:
- Prime borrowers (660+ FICO) now represent 80%+ of market, up from ~77% 
- Subprime segments declining from ~23% to ~19% market share over 2-year period
- Consistent trend toward lower-risk composition across all recent months

IMPLICATIONS:
- Portfolio risk decreasing as market naturally selects for better credit quality
- Revenue pressure from higher credit quality reducing interest rate margins
- Market opportunity in underserved subprime segments if priced correctly*/

WITH credit_categories AS (
  SELECT 
    date,
    CASE 
      WHEN credit_score_group IN ('Deep subprime', 'Subprime', 'Near-prime') THEN 'Subprime'
      WHEN credit_score_group IN ('Prime', 'Super-prime') THEN 'Prime'
    END as risk_category,
    vol
  FROM `loan_portfolio.credit_scores`
), -- Consolidate our credit categories into 2 for concise analysis
monthly_totals AS (
  SELECT 
    date,
    SUM(vol) as total_volume
  FROM credit_categories
  GROUP BY date
),
risk_shares AS (
  SELECT 
    c.date,
    c.risk_category,
    SUM(c.vol) as category_volume,
    m.total_volume,
    ROUND(SUM(c.vol) / m.total_volume * 100, 1) as market_share_pct
  FROM credit_categories c
  JOIN monthly_totals m ON c.date = m.date
  GROUP BY c.date, c.risk_category, m.total_volume
)
SELECT
  date,
  risk_category,
  market_share_pct,
  LAG(market_share_pct, 12) OVER (
    PARTITION BY risk_category
    ORDER BY date
  ) as share_last_yr,
  ROUND(
    market_share_pct - LAG(market_share_pct, 12) OVER (
      PARTITION BY risk_category 
      ORDER BY date
    ), 1
  ) as share_change_yoy
FROM risk_shares
WHERE date >= '2020-01' --Focus on recent years
ORDER BY date DESC, risk_category;
