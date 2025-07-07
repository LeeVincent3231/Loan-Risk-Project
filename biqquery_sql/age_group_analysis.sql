/*
BUSINESS QUESTION: What is the age demographic of borrower activity?

INSIGHTS:
- Young borrowers (under 30) hover around 15% of market and on consistent decline over the years

IMPLICATIONS:
- Core customer acquisition trends towards older demographic
- Potential marketing strategy gap in targeting Gen-Z and Millenials 
*/

WITH age_categories AS (
  SELECT 
    date,
    CASE 
      WHEN age_group IN ('Younger than 30') THEN 'Young_Borrowers'
      ELSE 'Established_Borrowers'
    END as age_segment,
    SUM(vol) as segment_volume,
    ROUND(SUM(vol) / SUM(SUM(vol)) OVER (PARTITION BY date) *100, 1) as market_share_pct 
                    --Basically SUM(segment_volume)
  FROM `loan_portfolio.age_groups`
  GROUP BY date, age_segment
)

SELECT
  date,
  age_segment,
  market_share_pct,
  LAG(market_share_pct, 12) OVER (
    PARTITION BY age_segment
    ORDER BY date
  ) as share_last_yr,
  ROUND(
    market_share_pct - LAG(market_share_pct, 12) OVER (
      PARTITION BY age_segment 
      ORDER BY date
    ), 1) as share_change_yoy
FROM age_categories
WHERE date >= '2020-01'
ORDER BY date DESC, age_segment;
