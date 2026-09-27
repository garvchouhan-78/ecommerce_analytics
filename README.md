# E-Commerce Analytics — dbt Project

## Overview

This project implements an end-to-end E-Commerce Analytics data transformation and analytics workflow using **dbt** and **Snowflake**.

The project demonstrates how raw e-commerce data can be transformed into clean staging models, analytical marts, reusable macros, tested datasets, historical snapshots, and analytical queries.

The project also uses dbt's testing, documentation, snapshot, seed, macro, and model capabilities to build a maintainable analytics project.

---

## Tech Stack

- dbt
- Snowflake
- SQL
- Python
- Git / GitHub

### Versions Used

- dbt Core: 1.12.5
- dbt Snowflake Adapter: 1.12.1

---

## Project Structure

```text
ecommerce_analytics/
│
├── analyses/
│   └── customer_point_in_time_lookup.sql
│
├── macros/
│   ├── cents_to_dollars.sql
│   └── pivot_payment_methods.sql
│
├── models/
│   ├── staging/
│   │   ├── staging_models.yml
│   │   └── staging SQL models
│   │
│   └── marts/
│       └── finance/
│           ├── fct_daily_revenue.sql
│           ├── dim_customers.sql
│           ├── payment_method_summary.sql
│           └── _finance_models.yml
│
├── snapshots/
│   └── snap_customers.sql
│
├── seeds/
│   └── seed data files
│
├── tests/
│   └── custom data tests
│
├── dbt_project.yml
├── README.md
└── .gitignore