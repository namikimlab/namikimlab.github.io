---
layout: project
title: Retail Card Transaction Data Mart
date: 2024-06-03
description: A fully self-built batch data pipeline simulating real-world retail transaction analytics. 
image: /assets/projects/card-data-mart/cardmapr-nl-EjAkfNQb46k-unsplash.jpg
tags: ["Data Engineering", "Data Pipeline", "ETL", "Apache Airflow", "dbt", "Docker", "Data Mart", "Data Quality", "PostgreSQL", "Metabase", "OLAP", "Batch Processing"]
featured: true
visible: true
---

👉 [**Source Code (GitHub)**](https://github.com/namikimlab/card-data-mart)

This project showcases my ability to design, build, and operate a full data mart system using modern data engineering tools

## 💡 Project Overview

When working with retail or fintech transaction data, businesses need robust data pipelines that can clean, transform, validate, and deliver data for reporting and analytics.

In this project, I built a **complete OLAP-style data mart pipeline** using open-source tools, fully containerized for production-like deployment.

## 🔧 Tech Stack

- **Orchestration**: Apache Airflow (Dockerized)
- **Data Transformation**: dbt (Data Build Tool)
- **Data Storage**: PostgreSQL (OLAP-style data mart)
- **Dashboard & BI**: Metabase
- **Containerization**: Docker Compose
- **Cloud Readiness**: S3-ready ingestion logic for future extensibility
- **Data Quality**: dbt tests (accepted range, uniqueness, referential integrity)


## 🏗️ Architecture Summary

- **Source**: UCI Online Retail Dataset (transaction log format)
- **ETL Flow**:
  - Raw ingestion → PostgreSQL
  - Staging models → dbt transformations
  - Fact and dimension models → Star schema design
  - Monthly aggregations → fct_monthly_sales table
  - Data quality checks → dbt tests for production readiness

- **Orchestration with Airflow**:
  - Modular DAGs: `ingestion_dag`, `dbt_pipeline_dag`, `full_etl_dag`
  - Easy to extend and schedule for recurring batch jobs


## 📊 Data Mart Design

- `stg_card_transactions`: staging layer with data cleansing
- `dim_customers`, `dim_products`: dimension tables
- `fct_transactions`: full transaction-level fact table
- `fct_monthly_sales`: monthly aggregated fact table for BI


## ✅ Data Quality Controls

Ensured production-grade integrity with dbt tests:

- Not Null Checks
- Accepted Range Tests (for amount & quantity)
- Unique Keys on surrogate primary keys
- Referential Integrity between fact & dimension models

<p align="center">
  <img src="/assets/projects/card-data-mart/dbt_test_result.png" alt="dbt test result" width="70%" />
</p>


## 📊 Example Dashboards

Built fully automated dashboards with Metabase:

- Revenue Trends (6-month & current month)
- Average Order Value
- Top Selling Products
- Customer Spending Trends
- Anomaly Detection (suspicious transactions)

<p align="center">
  <img src="/assets/projects/card-data-mart/metabase_dashboard.jpg" alt="Metabase dashboard" width="70%" />
</p>


## ⚙️ Pipeline Orchestration

- Dockerized deployment using Docker Compose
- Modular Airflow DAGs for ingestion and transformation
- Fault-tolerant design for batch processing pipelines

<p align="center">
  <img src="/assets/projects/card-data-mart/dag_1.png" alt="Airflow DAG 1" width="55%" />
  <img src="/assets/projects/card-data-mart/dag_2.png" alt="Airflow DAG 2" width="55%" />
</p>

## 🔬 dbt Documentation & Lineage

- dbt docs generated with full model documentation
- Column-level metadata and lineage graphs

<div style="display: flex; justify-content: center; align-items: center; gap: 2%;">
  <img src="/assets/projects/card-data-mart/dbt_doc_1.jpg" alt="dbt doc" style="width: 40%;" />
  <img src="/assets/projects/card-data-mart/dbt_doc_2.png" alt="dbt doc" style="width: 40%;" />
</div>

<p align="center">
  <img src="/assets/projects/card-data-mart/dbt_lineage.png" alt="dbt lineage" width="70%" />
</p>


## 🧰 Key Skills Demonstrated

- Full-stack batch data pipeline architecture
- Data mart design using dbt
- Docker-based orchestration of Airflow, dbt, Metabase, PostgreSQL
- Data quality monitoring using dbt tests
- Automated BI dashboards (Metabase)
- Production-grade engineering mindset: modular, scalable, fault-tolerant

## 🎯 Takeaway

This project simulates real-world batch processing pipelines you'd expect in production data platforms. It demonstrates:

- My ability to own the full pipeline **from ingestion to reporting**
- My understanding of **data validation and observability**
- My hands-on experience with modern data stack tools: **Airflow, dbt, Docker, Metabase**
