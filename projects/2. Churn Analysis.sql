-- Create database

CREATE DATABASE IF NOT EXISTS nova_analytics;
USE nova_analytics;

CREATE TABLE subscriptions (	
subscription_id		VARCHAR(10)		PRIMARY KEY,
customer_id			VARCHAR(10)		NOT NULL,
company_name		VARCHAR(60)		NOT NULL,
plan_tier			VARCHAR(20)		NOT NULL, -- Starter | Professional | Enterprise
start_date			DATE 			NOT NULL, -- Date subscription began (= cohort assignment date)
end_date			DATE,					  -- NULL= still active
status				VARCHAR(10)		NOT NULL, -- 'Active' or 'Churned'
months_active		INT 			NOT NULL  -- Months from start_date to end_date (or today for Active)	
)
;


INSERT INTO subscriptions VALUES
-- Cohort: 2023-01 (10 customers)
('SUB-001','CUST-001','DataStream Co','Enterprise','2023-01-05',NULL,'Active',29),
('SUB-002','CUST-002','EchoSystems Ltd','Professional','2023-01-12','2023-07-31','Churned',7),
('SUB-003','CUST-003','VertexFlow Inc','Starter','2023-01-15','2023-04-30','Churned',3),
('SUB-004','CUST-004','NexaCloud Corp','Enterprise','2023-01-18',NULL,'Active',29),
('SUB-005','CUST-005','Orbis Analytics','Professional','2023-01-22','2024-01-31','Churned',12),
('SUB-006','CUST-006','PulseData LLC','Starter','2023-01-25','2023-03-31','Churned',2),
('SUB-007','CUST-007','Stratum AI','Enterprise','2023-01-28',NULL,'Active',29),
('SUB-008','CUST-008','Lynx Metrics','Professional','2023-01-30','2023-10-31','Churned',9),
('SUB-009','CUST-009','ClearView BI','Starter','2023-01-31','2023-06-30','Churned',5),
('SUB-010','CUST-010','Aether Insights','Professional','2023-01-31',NULL,'Active',29),
-- Cohort: 2023-02 (8 customers)
('SUB-011','CUST-011','BlazePoint Inc','Starter','2023-02-03','2023-05-31','Churned',3),
('SUB-012','CUST-012','Celerity Data','Enterprise','2023-02-07',NULL,'Active',29),
('SUB-013','CUST-013','Dynamo Ops','Professional','2023-02-10','2024-05-31','Churned',15),
('SUB-014','CUST-014','Epoch Systems','Starter','2023-02-14','2023-04-30','Churned',2),
('SUB-015','CUST-015','Flux Analytics','Professional','2023-02-20','2023-11-30','Churned',9),
('SUB-016','CUST-016','GlobeTrek AI','Enterprise','2023-02-22',NULL,'Active',29),
('SUB-017','CUST-017','HighPoint Data','Starter','2023-02-25','2023-07-31','Churned',5),
('SUB-018','CUST-018','Ironclad BI','Professional','2023-02-28',NULL,'Active',29),
-- Cohort: 2023-03 (8 customers)
('SUB-019','CUST-019','JetStream Tech','Enterprise','2023-03-01',NULL,'Active',29),
('SUB-020','CUST-020','Kodex Analytics','Starter','2023-03-05','2023-05-31','Churned',2),
('SUB-021','CUST-021','LuminaryOps','Professional','2023-03-10','2024-02-28','Churned',11),
('SUB-022','CUST-022','Meridian Cloud','Enterprise','2023-03-12',NULL,'Active',29),
('SUB-023','CUST-023','Nimbus SaaS','Starter','2023-03-18','2023-09-30','Churned',6),
('SUB-024','CUST-024','OmniData Corp','Professional','2023-03-22','2023-08-31','Churned',5),
('SUB-025','CUST-025','Prism Insights','Enterprise','2023-03-25',NULL,'Active',29),
('SUB-026','CUST-026','Quantum Flow','Starter','2023-03-28','2023-06-30','Churned',3),
-- Cohort: 2023-04 (7 customers)
('SUB-027','CUST-027','Radiant BI','Professional','2023-04-02',NULL,'Active',29),
('SUB-028','CUST-028','SolarMetrics','Starter','2023-04-08','2023-07-31','Churned',3),
('SUB-029','CUST-029','TerraAnalytics','Enterprise','2023-04-12',NULL,'Active',29),
('SUB-030','CUST-030','UltraOps Inc','Professional','2023-04-15','2023-12-31','Churned',8),
('SUB-031','CUST-031','VortexCloud','Starter','2023-04-20','2023-08-31','Churned',4),
('SUB-032','CUST-032','WaveformAI','Enterprise','2023-04-25',NULL,'Active',29),
('SUB-033','CUST-033','Xenon Data','Professional','2023-04-28','2024-07-31','Churned',15),
-- Cohort: 2023-05 (7 customers)
('SUB-034','CUST-034','YieldPoint BI','Starter','2023-05-01','2023-08-31','Churned',3),
('SUB-035','CUST-035','Zenith Cloud','Enterprise','2023-05-05',NULL,'Active',29),
('SUB-036','CUST-036','AlphaMetrics','Professional','2023-05-10','2024-01-31','Churned',8),
('SUB-037','CUST-037','BetaOps Corp','Starter','2023-05-15','2023-09-30','Churned',4),
('SUB-038','CUST-038','CatalystBI','Enterprise','2023-05-18',NULL,'Active',29),
('SUB-039','CUST-039','DeltaAnalytics','Professional','2023-05-22','2023-11-30','Churned',6),
('SUB-040','CUST-040','EpsilonFlow','Starter','2023-05-28','2023-07-31','Churned',2),
-- Cohort: 2023-06 (7 customers)
('SUB-041','CUST-041','FusionData Ltd','Professional','2023-06-01',NULL,'Active',29),
('SUB-042','CUST-042','GammaCloud','Starter','2023-06-07','2023-10-31','Churned',4),
('SUB-043','CUST-043','HorizonAI','Enterprise','2023-06-10',NULL,'Active',29),
('SUB-044','CUST-044','InfiniteBI','Professional','2023-06-15','2024-03-31','Churned',9),
('SUB-045','CUST-045','JunctionOps','Starter','2023-06-18','2023-09-30','Churned',3),
('SUB-046','CUST-046','KarmaMetrics','Enterprise','2023-06-22',NULL,'Active',29),
('SUB-047','CUST-047','LatticeFlow','Professional','2023-06-28','2024-06-30','Churned',12),
-- Cohort: 2023-07 (6 customers)
('SUB-048','CUST-048','MatrixCloud','Enterprise','2023-07-03',NULL,'Active',29),
('SUB-049','CUST-049','NeutronBI','Starter','2023-07-08','2023-10-31','Churned',3),
('SUB-050','CUST-050','OpalAnalytics','Professional','2023-07-12','2024-04-30','Churned',9),
('SUB-051','CUST-051','PivotDataOps','Starter','2023-07-18','2023-11-30','Churned',4),
('SUB-052','CUST-052','QuasarCloud','Enterprise','2023-07-22',NULL,'Active',29),
('SUB-053','CUST-053','RapidInsights','Professional','2023-07-28',NULL,'Active',29),
-- Cohort: 2023-08 (6 customers)
('SUB-054','CUST-054','StellarBI','Enterprise','2023-08-02',NULL,'Active',29),
('SUB-055','CUST-055','TitanFlow','Starter','2023-08-08','2023-12-31','Churned',4),
('SUB-056','CUST-056','UmbrellaData','Professional','2023-08-12','2024-05-31','Churned',9),
('SUB-057','CUST-057','VanguardAI','Enterprise','2023-08-18',NULL,'Active',29),
('SUB-058','CUST-058','WarpCloud','Starter','2023-08-22','2023-11-30','Churned',3),
('SUB-059','CUST-059','XenonMetrics','Professional','2023-08-28',NULL,'Active',29),
-- Cohort: 2023-09 (6 customers)
('SUB-060','CUST-060','YottaOps','Enterprise','2023-09-05',NULL,'Active',29),
('SUB-061','CUST-061','ZeroPointBI','Starter','2023-09-10','2024-02-29','Churned',5),
('SUB-062','CUST-062','ArcadeData','Professional','2023-09-15','2024-08-31','Churned',11),
('SUB-063','CUST-063','BreezCloud','Enterprise','2023-09-20',NULL,'Active',29),
('SUB-064','CUST-064','CircuitFlow','Starter','2023-09-25','2024-01-31','Churned',4),
('SUB-065','CUST-065','DeepMetrics','Professional','2023-09-28',NULL,'Active',29),
-- Cohort: 2023-10 (5 customers)
('SUB-066','CUST-066','EclipseOps','Enterprise','2023-10-03',NULL,'Active',29),
('SUB-067','CUST-067','FlarePath BI','Starter','2023-10-10','2024-01-31','Churned',3),
('SUB-068','CUST-068','GravityData','Professional','2023-10-15',NULL,'Active',29),
('SUB-069','CUST-069','HelixCloud','Enterprise','2023-10-20',NULL,'Active',29),
('SUB-070','CUST-070','ImpulseFlow','Starter','2023-10-28','2024-03-31','Churned',5),
-- Cohort: 2023-11 (3 customers)
('SUB-071','CUST-071','JadeAnalytics','Enterprise','2023-11-05',NULL,'Active',29),
('SUB-072','CUST-072','KineticBI','Professional','2023-11-15',NULL,'Active',29),
('SUB-073','CUST-073','LunarOps','Starter','2023-11-22','2024-02-29','Churned',3),
-- Cohort: 2023-12 (2 customers)
('SUB-074','CUST-074','MagnumData','Enterprise','2023-12-10',NULL,'Active',29),
('SUB-075','CUST-075','NimbleCloud','Professional','2023-12-20',NULL,'Active',29);


-- Syntax:
-- DATE_FORMAT(date_column, '%Y-%m')   -- returns '2023-01', '2023-02', etc.
-- Excel parallel: TEXT(A2, "YYYY-MM")  or  MONTH(A2) / YEAR(A2) combo

SELECT *
FROM subscriptions;

SELECT subscription_id,
company_name,
plan_tier,
start_date,
DATE_FORMAT (start_date, '%Y-%m') AS cohort_month,
status
FROM subscriptions
ORDER BY start_date;


-- Step 2: Count customers per cohort
SELECT
    DATE_FORMAT(start_date, '%Y-%m') AS cohort_month,
    COUNT(*)                         AS customers_acquired
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;



-- Step 3: break each cohort down into Active vs. Churned 
SELECT
    DATE_FORMAT(start_date, '%Y-%m') AS cohort_month,
    COUNT(*)                         AS total_customers,
	SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END) churned_count,
    SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END) active_count
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;

-- Setup to CALCULATE CHURN RATE per Cohort
-- Integer division pitfall:
SELECT 3 / 10;        -- returns 0  ❌  (integer division in MySQL)
SELECT 3 / 10.0;      -- returns 0.3000  ✅

-- Percentage with rounding:
-- ROUND(SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END) / COUNT(*) * 100.0, 1)
                                                              -- ^ forces decimal math
-- 🎯  Objective
-- Turn raw counts into percentages. Churn rate = churned customers ÷ total customers. 
-- Express as a percentage rounded to 1 decimal. Finance teams use this for board-level cohort health scorecards

SELECT
    DATE_FORMAT(start_date, '%Y-%m')               AS cohort_month,
    COUNT(*)                                        AS total_customers,
    SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END) AS churned_count,
    ROUND(
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
    1)                                              AS churn_rate_pct,
    ROUND(100.0 - (
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0),
    1)                                              AS retention_rate_pct
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;


-- Step 4 Churn Rate by Plan Tier
-- Segment churn by plan tier (Starter, Professional, Enterprise). 
-- This tells you whether churn is concentrated in lower-value plans or whether premium customers are also leaving — critical for ARR impact analysis.

SELECT
    plan_tier,
    COUNT(*)                                        AS total_customers,
    SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END) AS churned_count,
    ROUND(
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0, 1
    )                                               AS churn_rate_pct,
    ROUND(AVG(months_active), 1)                    AS avg_months_before_churn
FROM subscriptions
GROUP BY plan_tier
ORDER BY churn_rate_pct DESC;


-- 🔍  Insight
-- All 25 Starter customers churned, averaging only 3.5 months before leaving. 
-- Enterprise customers show 0% churn with 20 months average tenure — this dataset suggests the Starter plan may be a trial tier without long-term retention. 
-- This finding would typically trigger a pricing strategy review or a Starter-to-Professional upgrade campaign



-- Step 5 Cohort Retention Table
WITH cohort_base AS (
    -- Step 1: Get cohort size and churn counts
    SELECT
        DATE_FORMAT(start_date, '%Y-%m')                      AS cohort_month,
        COUNT(*)                                               AS cohort_size,
        SUM(CASE WHEN status = 'Active'  THEN 1 ELSE 0 END)   AS still_active,
        SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)   AS churned
    FROM subscriptions
    GROUP BY cohort_month
),
cohort_rates AS (
    -- Step 2: Calculate rates from the base
    SELECT
        cohort_month,
        cohort_size,
        still_active,
        churned,
        ROUND(still_active  / cohort_size * 100.0, 1)  AS retention_rate_pct,
        ROUND(churned       / cohort_size * 100.0, 1)  AS churn_rate_pct
    FROM cohort_base
)
-- Step 3: Final output — flag high-churn cohorts
SELECT
    cohort_month,
    cohort_size,
    still_active,
    churned,
    retention_rate_pct,
    churn_rate_pct,
    CASE
        WHEN churn_rate_pct >= 50 THEN '🔴 High Churn'
        WHEN churn_rate_pct >= 30 THEN '🟡 Moderate Churn'
        ELSE                           '🟢 Low Churn'
    END AS churn_flag
FROM cohort_rates
ORDER BY cohort_month;


-- Step 6 — Average Months to Churn by Plan Tier and Cohort
-- Calculate months active (use CURDATE() for active customers):
-- TIMESTAMPDIFF(MONTH, start_date, COALESCE(end_date, CURDATE()))

-- COALESCE returns the first non-NULL argument:
-- COALESCE(NULL, CURDATE())  -- returns today's date
-- COALESCE('2023-07-31', CURDATE())  -- returns '2023-07-31'

-- Excel parallel: IF(ISBLANK(B2), TODAY(), B2)  inside a DATEDIF formula


WITH tenure_calc AS (
    SELECT
        subscription_id,
        company_name,
        plan_tier,
        DATE_FORMAT(start_date, '%Y-%m')                        AS cohort_month,
        status,
        TIMESTAMPDIFF(MONTH,
            start_date,
            COALESCE(end_date, CURDATE()))                       AS calc_months_active
    FROM subscriptions
)
SELECT
    plan_tier,
    cohort_month,
    COUNT(*)                                                     AS customers,
    SUM(CASE WHEN status = 'Churned' THEN 1 ELSE 0 END)         AS churned,
    ROUND(AVG(CASE WHEN status = 'Churned'
        THEN calc_months_active END), 1)                        AS avg_months_to_churn
FROM tenure_calc
GROUP BY plan_tier, cohort_month
HAVING churned > 0
ORDER BY plan_tier, cohort_month;



 -- BONUS 6 MONTHS RETENTION FLAG
 SELECT
    subscription_id,
    company_name,
    plan_tier,
    DATE_FORMAT(start_date, '%Y-%m')      AS cohort_month,
    start_date,
    end_date,
    status,
    -- Was the customer still active 6 months after start?
    CASE
        WHEN end_date IS NULL
            THEN 'Retained at 6M'
        WHEN TIMESTAMPDIFF(MONTH, start_date, end_date) >= 6
            THEN 'Retained at 6M'
        ELSE 'Churned by 6M'
    END                                   AS retention_6m_flag
FROM subscriptions
ORDER BY cohort_month, start_date;

-- Summary: Retention rate at 6M by cohort
SELECT
    DATE_FORMAT(start_date, '%Y-%m')      AS cohort_month,
    COUNT(*)                              AS cohort_size,
    SUM(CASE
        WHEN end_date IS NULL OR TIMESTAMPDIFF(MONTH, start_date, end_date) >= 6
        THEN 1 ELSE 0
    END)                                  AS retained_at_6m,
    ROUND(SUM(CASE
        WHEN end_date IS NULL OR TIMESTAMPDIFF(MONTH, start_date, end_date) >= 6
        THEN 1 ELSE 0 END) / COUNT(*) * 100.0, 1) AS retention_6m_pct
FROM subscriptions
GROUP BY cohort_month
ORDER BY cohort_month;










