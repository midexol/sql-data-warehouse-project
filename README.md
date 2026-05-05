# Data Warehouse and analytics project
🏗️ Data Warehouse and analytics project
Welcome to the  Data Warehouse repository. This project demonstrates the implementation of a structured data warehouse environment designed to transform fragmented raw data into high-signal business intelligence.

By applying data engineering principles—including schema design, ETL (Extract, Transform, Load) logic, and dimensional modeling—this system provides a scalable foundation for advanced data analysis and reporting.

---

## Project Requirements

## building the Data Warehouse (Data Engineering)

## Objective
Develop a modern data warehouse using SQL Server to consolidate data, enabling analytical reporting and informed decision-making.

## 🏗️ Data Architecture (Medallion)
This project follows a multi-layered approach to ensure data quality and lineage:
**Bronze (Staging)**:
Direct ingestion of source data.

Schema-on-read approach with minimal transformations.

Scripts: scripts/01_bronze_layer/

**Silver (Integration)**:

Data cleaning, deduplication, and type casting.

Implementation of business rules and NULL handling.

Scripts: scripts/02_silver_layer/

**Gold (Analytics)**:

Final Star Schema implementation.

Optimized Fact and Dimension tables using surrogate keys.

Scripts: scripts/03_gold_layer/

---

🛡️ License
Distributed under the MIT License. See LICENSE for more information.
