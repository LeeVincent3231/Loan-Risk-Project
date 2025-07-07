/*
BUSINESS QUESTION: What's the overall landscape of auto loan origination and trends?

INSIGHTS:
- Consistent ~2.1M monthly loan volume with recent growth recovery (10% YoY in Nov 2024)
- Loan amount normalization: $23K (2020) → $30.8K+ peak (2022) → stable $30K (2024)
- Individual loan amounts increased 30% since 2020 but growth has plateaued

IMPLICATIONS:
- Market recovery + stable loan sizes = favorable conditions for volume growth
- Higher individual loan amounts require monitoring but growth has stabilized
*/

WITH monthly_origination as (
  SELECT 
    c.date,
    c.num as loan_count,
    d.vol as dollar_volume, 
    ROUND(d.vol / c.num, 0) AS avg_loan_amount
  FROM `loan_portfolio.origination_monthly_count` c
  JOIN `loan_portfolio.origination_monthly_dollar` d
    ON c.date = d.date
) 
SELECT
  date,
  loan_count,
  dollar_volume,
  avg_loan_amount,
  ROUND(
    100*(avg_loan_amount - LAG(avg_loan_amount, 12) OVER (ORDER BY date))/ 
    (LAG(avg_loan_amount, 12) OVER(ORDER BY date)), 1
  ) as avg_loan_yoy_growth,
  ROUND(
    100*(loan_count - LAG(loan_count, 12) OVER (ORDER BY date))/ 
    (LAG(loan_count, 12) OVER(ORDER BY date)), 1
  ) as volume_yoy_growth
FROM monthly_origination
WHERE date >= '2020-01' 
ORDER BY date DESC;
