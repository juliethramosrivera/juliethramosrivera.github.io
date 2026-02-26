# Projects
SQL & Finance Projects — Julieth Ramos Rivera

Head of Finance · Systems Architect · B2B SaaS & Fintech
juliethramosrivera.github.io · LinkedIn


Each project in this folder is a working SQL implementation built on realistic B2B SaaS data for Nova Analytics Inc. — a fictional company designed to mirror the financial systems common in SaaS, fintech, and data-driven businesses.
These are not tutorials. Each project answers a real finance question and produces a result that enables a specific business decision.

Project 01 — Revenue Reconciliation
File: 1. Revenue Reconciliation.sql
Data: 1.1 Revenue Reconciliation.csv
Business question: Why does reported revenue not match what was actually collected?
Joins the General Ledger (QuickBooks) against Stripe payment records. Aggregates by customer, calculates variance, and flags every mismatch. Built using LEFT JOIN, subqueries, GROUP BY, CASE WHEN, and COALESCE.
Result: Identified 2 discrepancies totalling $2,898 — a duplicate GL posting (DataStream Co) and a partial payment (EchoSystems Ltd). Prevents overstated revenue on board reporting.
Decision enabled: Reverse duplicate GL entry · Issue credit note for partial payment · Re-date failed payment retry

Project 02 — Churn Analysis by Cohort
File: 2. Churn Analysis.sql
Business question: Of the customers who signed up each month, how many are still active — and which plan tier is driving churn?
Cohort retention analysis across 75 customers and 12 monthly cohorts. Segments churn by plan tier and calculates 6-month retention flags. Built using CTEs, DATE_FORMAT, TIMESTAMPDIFF, conditional aggregation, and CASE WHEN.
Key findings:

Starter plan: 100% churn rate · avg tenure 3.5 months
Professional plan: 59% churn · avg 9.4 months before leaving
Enterprise plan: 0% churn · avg 29 months active

Decision enabled: Starter→Professional upgrade campaign at month 2 · Renewal outreach for Professional accounts at month 15 · Enterprise expansion as primary growth lever

Project 03 Documentation is a work in progress....


All company names and data are fictional. Built with MySQL · Documented Feb 2026.
