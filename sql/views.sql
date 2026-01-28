-- Total Revenue
CREATE OR REPLACE VIEW vw_total_revenue AS
SELECT
    SUM(quantity * price) AS total_revenue
FROM online_retail
WHERE invoice NOT LIKE 'C%';


-- Monthly Revenue
CREATE OR REPLACE VIEW vw_monthly_revenue AS
SELECT
    DATE_TRUNC('month', invoicedate) AS month,
    SUM(quantity * price) AS net_revenue
FROM online_retail
WHERE invoice NOT LIKE 'C%'
GROUP BY 1;


-- Yearly Revenue
CREATE OR REPLACE VIEW vw_yearly_revenue AS
SELECT
    DATE_TRUNC('year', invoicedate) AS year,
    SUM(quantity * price) AS net_revenue
FROM online_retail
WHERE invoice NOT LIKE 'C%'
GROUP BY 1;


-- Customer Revenue
CREATE OR REPLACE VIEW vw_customer_revenue AS
SELECT
    customer_id,
    SUM(quantity * price) AS revenue
FROM online_retail
WHERE invoice NOT LIKE 'C%'
GROUP BY customer_id;


-- Cancellation Rate
CREATE OR REPLACE VIEW vw_cancellation_rate AS
SELECT
    COUNT(*) FILTER (WHERE invoice LIKE 'C%')::float / COUNT(*) * 100
        AS cancellation_rate
FROM online_retail;