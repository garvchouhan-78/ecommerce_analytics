# E-Commerce Analytics — dbt Project

## :pushpin: Project Overview

This project is an end-to-end **E-Commerce Analytics data transformation and analytics solution built using dbt (Data Build Tool)** and Snowflake.

The objective of the project is to transform raw e-commerce data into reliable, tested, documented, and analytics-ready datasets. The project demonstrates core dbt capabilities including data modeling, testing, source management, seeds, snapshots, macros, analyses, documentation, and model lineage.

The complete project brings together the work performed across **five dbt assignments** into a single structured and maintainable dbt project.

---

## :dart: Objectives

The primary objectives of this project are:

- Build a structured dbt project for e-commerce analytics.
- Transform raw source data into analytics-ready models.
- Implement modular and reusable SQL transformations.
- Create staging/intermediate/final analytical models where applicable.
- Implement data quality and integrity tests.
- Load static reference data using dbt seeds.
- Track historical changes using dbt snapshots.
- Create reusable SQL logic using macros.
- Develop analytical SQL queries using dbt analyses.
- Generate and serve project documentation.
- Establish model dependencies and data lineage.
- Follow dbt project organization and best practices.

---

## :building_construction: Technology Stack

| Technology | Purpose |
|------------|---------|
| **dbt** | Data transformation, testing, documentation and modeling |
| **Snowflake** | Cloud data warehouse / database |
| **SQL** | Data transformation and analytical queries |
| **Python** | Local dbt environment and execution |
| **Git** | Version control |
| **GitHub** | Source-code repository |

---

## :open_file_folder: Project Structure

```text
ecommerce_analytics/
│
├── analyses/
│   └── Analytical SQL queries
│
├── macros/
│   └── Reusable dbt macros
│
├── models/
│   ├── Staging / transformation models
│   └── Schema and model configurations
│
├── seeds/
│   └── Static CSV datasets
│
├── snapshots/
│   └── Historical data tracking logic
│
├── tests/
│   └── Custom data quality tests
│
├── dbt_project.yml
├── packages.yml
├── README.md
└── .gitignore