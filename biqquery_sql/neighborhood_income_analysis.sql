/*
BUSINESS QUESTION: Are we seeing different origination patterns in higher-income neighborhoods vs lower-income?

Relative Neighborhood Income Levels Compared to Median:
Low income (relative income less than 50%)
Moderate income (relative income 50% to less than 80%)
Middle income (relative income 80% to less than 120%)
Upper income (relative income 120% or higher)

INSIGHTS:
- Above-median income areas dominate at 81% market share consistently (from ~80% in 2020)

IMPLICATIONS
- Concentration trends in credit quality shifts towards affluent markets
- Revenue opportunity is underserved in lower-income markets
*/

WITH income_groups AS (
  SELECT
    date,
    CASE 
      WHEN income_level_group IN ('High', 'Middle') THEN 'Above_Median_Income'
      ELSE 'Below_Median_Income'
    END AS income_segment,
    SUM(vol) as segment_volume,
    ROUND(SUM(vol) / SUM(SUM(vol)) OVER (PARTITION BY date) *100, 1) as market_share_pct
  FROM `loan_portfolio.neighborhood_income`
  GROUP BY date, income_segment
)

SELECT
  date,
  income_segment,
  market_share_pct,
  LAG(market_share_pct, 12) OVER (
    PARTITION BY income_segment 
    ORDER BY date
  ) as share_last_year,
  ROUND(
    market_share_pct - LAG(market_share_pct, 12) OVER (
      PARTITION BY income_segment
      ORDER BY date
      ), 1) as share_change_yoy
  FROM income_groups
  WHERE date >= '2020-01'
  ORDER BY date DESC, income_segment;
