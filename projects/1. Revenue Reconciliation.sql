-- Remove the misplaced tables from Parks_and_Recreation
USE Parks_and_Recreation;
DROP TABLE IF EXISTS general_ledger;
DROP TABLE IF EXISTS stripe_payments;

-- Remove nova_analytics completely and start fresh
DROP DATABASE IF EXISTS nova_analytics;

-- Now recreate it clean
CREATE DATABASE nova_analytics;
USE nova_analytics;

-- Create the tables in the RIGHT database
CREATE TABLE general_ledger (
  gl_id          VARCHAR(10)   PRIMARY KEY,
  entry_date     DATE          NOT NULL,
  customer_name  VARCHAR(100)  NOT NULL,
  account_code   VARCHAR(20),
  description    VARCHAR(200),
  amount         DECIMAL(10,2) NOT NULL,
  posted_by      VARCHAR(50)
);

CREATE TABLE stripe_payments (
  payment_id     VARCHAR(10)   PRIMARY KEY,
  payment_date   DATE          NOT NULL,
  customer_name  VARCHAR(100)  NOT NULL,
  amount         DECIMAL(10,2) NOT NULL,
  status         VARCHAR(20),
  stripe_fee     DECIMAL(10,2),
  net_amount     DECIMAL(10,2)
);

INSERT INTO general_ledger VALUES
('GL001','2024-10-01','Acme Corp','REV-4100','Oct subscription',2499.00,'jramos'),
('GL002','2024-10-01','BrightPath LLC','REV-4100','Oct subscription',799.00,'jramos'),
('GL003','2024-10-01','CoreLogic Inc','REV-4100','Oct subscription',299.00,'jramos'),
('GL004','2024-10-02','DataStream Co','REV-4100','Oct subscription',2499.00,'auto'),
('GL005','2024-10-02','DataStream Co','REV-4100','Oct subscription duplicate',2499.00,'auto'),
('GL006','2024-10-03','EchoSystems Ltd','REV-4100','Oct subscription',799.00,'jramos'),
('GL007','2024-10-03','FinCore Partners','REV-4100','Oct subscription',299.00,'jramos'),
('GL008','2024-10-04','Growbase Inc','REV-4100','Oct subscription',2499.00,'jramos'),
('GL009','2024-10-04','HorizonTech','REV-4100','Oct subscription',799.00,'jramos'),
('GL010','2024-10-05','Infralink Co','REV-4100','Oct subscription',299.00,'jramos'),
('GL011','2024-10-07','JetMetrics LLC','REV-4100','Oct subscription',2499.00,'jramos'),
('GL012','2024-10-08','Keystone AI','REV-4100','Oct subscription',799.00,'jramos'),
('GL013','2024-10-09','Luminar Data','REV-4100','Oct subscription',299.00,'jramos'),
('GL014','2024-10-10','Meridian SaaS','REV-4100','Oct subscription',2499.00,'jramos'),
('GL015','2024-10-11','NorthStar Co','REV-4100','Oct subscription',799.00,'jramos'),
('GL016','2024-10-14','Orion Platforms','REV-4100','Oct subscription',299.00,'jramos'),
('GL017','2024-10-14','PulseData Inc','REV-4100','Oct subscription',2499.00,'jramos'),
('GL018','2024-10-15','Quantum Metrics','REV-4100','Oct subscription',799.00,'jramos'),
('GL019','2024-10-15','RapidFlow Co','REV-4100','Oct subscription',299.00,'jramos'),
('GL020','2024-10-16','SignalBase Ltd','REV-4100','Oct subscription',2499.00,'jramos'),
('GL021','2024-10-17','TrueLayer Inc','REV-4100','Oct subscription',799.00,'jramos'),
('GL022','2024-10-18','Uplevel SaaS','REV-4100','Oct subscription',299.00,'jramos'),
('GL023','2024-10-21','VaultMetrics','REV-4100','Oct subscription',2499.00,'jramos'),
('GL024','2024-10-21','WaveLogic Co','REV-4100','Oct subscription',799.00,'jramos'),
('GL025','2024-10-22','Xenon Data','REV-4100','Oct subscription',299.00,'jramos'),
('GL026','2024-10-22','YieldBase Inc','REV-4100','Oct subscription',2499.00,'jramos'),
('GL027','2024-10-23','ZeroPoint LLC','REV-4100','Oct subscription',799.00,'jramos'),
('GL028','2024-10-24','AlphaStack Co','REV-4100','Oct subscription',299.00,'jramos'),
('GL029','2024-10-25','BetaSync Ltd','REV-4100','Oct subscription',2499.00,'jramos'),
('GL030','2024-10-25','ClearPath AI','REV-4100','Oct subscription',799.00,'jramos'),
('GL031','2024-10-28','DeltaCore Inc','REV-4100','Oct subscription',299.00,'jramos'),
('GL032','2024-10-28','EchoBase Co','REV-4100','Oct subscription',2499.00,'jramos'),
('GL033','2024-10-29','FlowState LLC','REV-4100','Oct subscription',799.00,'jramos'),
('GL034','2024-10-29','GridLogic Inc','REV-4100','Oct subscription',299.00,'jramos'),
('GL035','2024-10-30','HexData Co','REV-4100','Oct subscription',2499.00,'jramos'),
('GL036','2024-10-30','IonBase Ltd','REV-4100','Oct subscription',799.00,'jramos'),
('GL037','2024-10-31','JumpStart AI','REV-4100','Oct subscription',299.00,'jramos'),
('GL038','2024-10-31','KernelOps Co','REV-4100','Oct subscription',2499.00,'jramos'),
('GL039','2024-11-01','LinkLayer Inc','REV-4100','Nov subscription',799.00,'jramos'),
('GL040','2024-11-01','Acme Corp','REV-4100','Nov subscription',2499.00,'jramos'),
('GL041','2024-11-01','BrightPath LLC','REV-4100','Nov subscription',799.00,'jramos'),
('GL042','2024-11-02','MatrixFlow Co','REV-4100','Nov subscription',299.00,'jramos'),
('GL043','2024-11-02','NodeBase Ltd','REV-4100','Nov subscription',2499.00,'jramos'),
('GL044','2024-11-03','OmegaSync Inc','REV-4100','Nov subscription',799.00,'jramos'),
('GL045','2024-11-03','PhaseCore Co','REV-4100','Nov subscription',299.00,'jramos');

INSERT INTO stripe_payments VALUES
('STR-001','2024-10-01','Acme Corp',2499.00,'succeeded',72.47,2426.53),
('STR-002','2024-10-01','BrightPath LLC',799.00,'succeeded',23.17,775.83),
('STR-003','2024-10-02','CoreLogic Inc',299.00,'failed',0.00,0.00),
('STR-004','2024-10-02','DataStream Co',2499.00,'succeeded',72.47,2426.53),
('STR-005','2024-10-03','EchoSystems Ltd',400.00,'succeeded',11.60,388.40),
('STR-006','2024-10-03','FinCore Partners',299.00,'succeeded',8.67,290.33),
('STR-007','2024-10-04','Growbase Inc',2499.00,'succeeded',72.47,2426.53),
('STR-008','2024-10-04','HorizonTech',799.00,'succeeded',23.17,775.83),
('STR-009','2024-10-05','Infralink Co',299.00,'succeeded',8.67,290.33),
('STR-010','2024-10-07','JetMetrics LLC',2499.00,'succeeded',72.47,2426.53),
('STR-011','2024-10-08','Keystone AI',799.00,'succeeded',23.17,775.83),
('STR-012','2024-10-09','Luminar Data',299.00,'succeeded',8.67,290.33),
('STR-013','2024-10-10','Meridian SaaS',2499.00,'succeeded',72.47,2426.53),
('STR-014','2024-10-11','NorthStar Co',799.00,'succeeded',23.17,775.83),
('STR-015','2024-10-14','Orion Platforms',299.00,'succeeded',8.67,290.33),
('STR-016','2024-10-14','PulseData Inc',2499.00,'succeeded',72.47,2426.53),
('STR-017','2024-10-15','Quantum Metrics',799.00,'succeeded',23.17,775.83),
('STR-018','2024-10-15','RapidFlow Co',299.00,'succeeded',8.67,290.33),
('STR-019','2024-10-16','SignalBase Ltd',2499.00,'succeeded',72.47,2426.53),
('STR-020','2024-10-17','TrueLayer Inc',799.00,'succeeded',23.17,775.83),
('STR-021','2024-10-18','Uplevel SaaS',299.00,'succeeded',8.67,290.33),
('STR-022','2024-10-21','VaultMetrics',2499.00,'succeeded',72.47,2426.53),
('STR-023','2024-10-21','WaveLogic Co',799.00,'succeeded',23.17,775.83),
('STR-024','2024-10-22','Xenon Data',299.00,'succeeded',8.67,290.33),
('STR-025','2024-10-22','YieldBase Inc',2499.00,'succeeded',72.47,2426.53),
('STR-026','2024-10-23','ZeroPoint LLC',799.00,'succeeded',23.17,775.83),
('STR-027','2024-10-24','AlphaStack Co',299.00,'succeeded',8.67,290.33),
('STR-028','2024-10-25','BetaSync Ltd',2499.00,'succeeded',72.47,2426.53),
('STR-029','2024-10-25','ClearPath AI',799.00,'succeeded',23.17,775.83),
('STR-030','2024-10-28','DeltaCore Inc',299.00,'succeeded',8.67,290.33),
('STR-031','2024-10-28','EchoBase Co',2499.00,'succeeded',72.47,2426.53),
('STR-032','2024-10-29','FlowState LLC',799.00,'succeeded',23.17,775.83),
('STR-033','2024-10-29','GridLogic Inc',299.00,'succeeded',8.67,290.33),
('STR-034','2024-10-30','HexData Co',2499.00,'succeeded',72.47,2426.53),
('STR-035','2024-10-30','IonBase Ltd',799.00,'succeeded',23.17,775.83),
('STR-036','2024-10-31','JumpStart AI',299.00,'succeeded',8.67,290.33),
('STR-037','2024-10-31','KernelOps Co',2499.00,'succeeded',72.47,2426.53),
('STR-038','2024-11-01','LinkLayer Inc',799.00,'succeeded',23.17,775.83),
('STR-039','2024-11-01','Acme Corp',2499.00,'succeeded',72.47,2426.53),
('STR-040','2024-11-01','BrightPath LLC',799.00,'succeeded',23.17,775.83),
('STR-041','2024-11-02','MatrixFlow Co',299.00,'succeeded',8.67,290.33),
('STR-042','2024-11-02','NodeBase Ltd',2499.00,'succeeded',72.47,2426.53),
('STR-043','2024-11-03','OmegaSync Inc',799.00,'succeeded',23.17,775.83),
('STR-044','2024-11-03','PhaseCore Co',299.00,'succeeded',8.67,290.33),
('STR-045','2024-10-31','CoreLogic Inc',299.00,'succeeded',8.67,290.33);

-- See all GL entries
SELECT *
FROM general_ledger;

-- See all Stripe payments
SELECT *
FROM stripe_payments;

-- Total GL amount per customer (your 'books' side)
SELECT
  customer_name,
  SUM(amount) AS gl_total
FROM general_ledger
WHERE account_code = 'REV-4100'
GROUP BY customer_name
ORDER BY customer_name;

-- Total Stripe amount per customer (your 'bank' side)
SELECT
  customer_name,
  SUM(amount) AS stripe_total
FROM stripe_payments
WHERE status = 'succeeded'
GROUP BY customer_name
ORDER BY customer_name;

-- Connect GL totals to Stripe totals by customer
SELECT
  gl.customer_name,
  gl.gl_total,
  sp.stripe_total
FROM (
  SELECT customer_name, SUM(amount) AS gl_total
  FROM general_ledger
  WHERE account_code = 'REV-4100'
  GROUP BY customer_name
) AS gl
LEFT JOIN (
  SELECT customer_name, SUM(amount) AS stripe_total
  FROM stripe_payments
  WHERE status = 'succeeded'
  GROUP BY customer_name
) AS sp
  ON gl.customer_name = sp.customer_name
ORDER BY gl.customer_name;

-- COMPLETE REVENUE RECONCILIATION QUERY
-- COALESCE — one new concept
-- COALESCE(sp.stripe_total, 0) means: 'If stripe_total is NULL, use 0 instead.' Without this, NULL - anything = NULL, and your variance column would be blank.
-- In Excel terms: =IF(ISBLANK(B2), 0, B2)
-- Nova Analytics Inc. | October 2024 | Author: J. Ramos Rivera

SELECT
  gl.customer_name,
  gl.gl_total                              AS gl_amount,
  COALESCE(sp.stripe_total, 0)             AS stripe_amount,
  gl.gl_total - COALESCE(sp.stripe_total, 0) AS variance,
  CASE
    WHEN gl.gl_total = COALESCE(sp.stripe_total, 0) THEN 'OK'
    ELSE 'FLAG'
  END                                      AS status
FROM (
  SELECT customer_name, SUM(amount) AS gl_total
  FROM general_ledger
  WHERE account_code = 'REV-4100'
  GROUP BY customer_name
) AS gl
LEFT JOIN (
  SELECT customer_name, SUM(amount) AS stripe_total
  FROM stripe_payments
  WHERE status = 'succeeded'
  GROUP BY customer_name
) AS sp ON gl.customer_name = sp.customer_name
ORDER BY
  CASE WHEN gl.gl_total - COALESCE(sp.stripe_total,0) <> 0
    THEN 0 ELSE 1 END,
  ABS(gl.gl_total - COALESCE(sp.stripe_total, 0)) DESC;

